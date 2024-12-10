/*
* Copyright (C) 2013 - 2016  Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person
* obtaining a copy of this software and associated documentation
* files (the "Software"), to deal in the Software without restriction,
* including without limitation the rights to use, copy, modify, merge,
* publish, distribute, sublicense, and/or sell copies of the Software,
* and to permit persons to whom the Software is furnished to do so,
* subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included
* in all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
* IN NO EVENT SHALL XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
* CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in this
* Software without prior written authorization from Xilinx.
*
*/

/*
* DMA test application to send (and receive) a WAV file in CMA memory 
*/

#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <termios.h>
#include <sys/mman.h>
#include <stdbool.h>

#define MM2S_CONTROL_REGISTER       0x00
#define MM2S_STATUS_REGISTER        0x04
#define MM2S_SRC_ADDRESS_REGISTER   0x18
#define MM2S_TRNSFR_LENGTH_REGISTER 0x28

#define S2MM_CONTROL_REGISTER       0x30
#define S2MM_STATUS_REGISTER        0x34
#define S2MM_DST_ADDRESS_REGISTER   0x48
#define S2MM_BUFF_LENGTH_REGISTER   0x58

#define IOC_IRQ_FLAG                1<<12
#define IDLE_FLAG                   1<<1

#define STATUS_HALTED               0x00000001
#define STATUS_IDLE                 0x00000002
#define STATUS_SG_INCLDED           0x00000008
#define STATUS_DMA_INTERNAL_ERR     0x00000010
#define STATUS_DMA_SLAVE_ERR        0x00000020
#define STATUS_DMA_DECODE_ERR       0x00000040
#define STATUS_SG_INTERNAL_ERR      0x00000100
#define STATUS_SG_SLAVE_ERR         0x00000200
#define STATUS_SG_DECODE_ERR        0x00000400
#define STATUS_IOC_IRQ              0x00001000
#define STATUS_DELAY_IRQ            0x00002000
#define STATUS_ERR_IRQ              0x00004000

#define HALT_DMA                    0x00000000
#define RUN_DMA                     0x00000001
#define RESET_DMA                   0x00000004
#define ENABLE_IOC_IRQ              0x00001000
#define ENABLE_DELAY_IRQ            0x00002000
#define ENABLE_ERR_IRQ              0x00004000
#define ENABLE_ALL_IRQ              0x00007000

#define DMA_BASE_ADDRESS 			0xA0030000
#define CMA_BASE_ADDRESS			0x5BA00000

#define AUDIO_SAMPLE_RATE 			48000
#define AUDIO_BIT_DEPTH				16
#define AUDIO_CHANNELS				2
#define BUFFER_SAMPLES				1024
#define WAV_HEADER_SIZE 			44

#define PAGE_SIZE                   4096

// WAV header structure (44 bytes total)
struct WavHeader {
    char riff[4];               // "RIFF"
    uint32_t chunk_size;        // Overall size of file in bytes minus 8 bytes
    char wave[4];               // "WAVE"
    char fmt[4];                // "fmt " (with a trailing space)
    uint32_t subchunk1_size;    // Size of the fmt chunk (usually 16 for PCM)
    uint16_t audio_format;      // Audio format (1 for PCM)
    uint16_t num_channels;      // Number of channels (1 = mono, 2 = stereo)
    uint32_t sample_rate;       // Sample rate (e.g., 44100 Hz)
    uint32_t byte_rate;         // Byte rate = SampleRate * NumChannels * BitsPerSample/8
    uint16_t block_align;       // Block align = NumChannels * BitsPerSample/8
    uint16_t bits_per_sample;   // Bits per sample (e.g., 16 for 16-bit audio)
    char data[4];               // "data"
    uint32_t data_size;         // Number of bytes in data section
} ;

// Function to print WAV header information
void print_wav_header(const struct WavHeader *header) {
    printf("WAV File Header:\n");
    printf("  Chunk ID: %.4s\n", header->riff);
    printf("  Chunk Size: %u\n", header->chunk_size);
    printf("  Format: %.4s\n", header->wave);
    printf("  Subchunk1 ID: %.4s\n", header->fmt);
    printf("  Subchunk1 Size: %u\n", header->subchunk1_size);
    printf("  Audio Format: %u\n", header->audio_format);
    printf("  Number of Channels: %u\n", header->num_channels);
    printf("  Sample Rate: %u\n", header->sample_rate);
    printf("  Byte Rate: %u\n", header->byte_rate);
    printf("  Block Align: %u\n", header->block_align);
    printf("  Bits per Sample: %u\n", header->bits_per_sample);
    printf("  Subchunk2 ID: %.4s\n", header->data);
    printf("  Data Size: %u\n", header->data_size);
}

// Function to load the WAV header
int load_wav_header(FILE *file, size_t *data_size, struct WavHeader *header) {
    size_t bytes_read;

    /* Read the WAV header */
    bytes_read = fread(header, sizeof(struct WavHeader), 1, file);
    if (bytes_read != 1) {
        printf("Failed to read WAV header\n");
        return -1;
    }

    /* Print header information */
    print_wav_header(header);

    /* Verify "RIFF" and "WAVE" format */
    if (strncmp(header->riff, "RIFF", 4) != 0 || strncmp(header->wave, "WAVE", 4) != 0) {
        printf("Invalid WAV file format\n");
        return -1;
    }

	printf("WAV header loaded! \n");
    return 0;
}

int get_wav_chunk(FILE *file, size_t start_byte, size_t chunk_size, bool *last, size_t *read_size, unsigned long *data_buf, struct WavHeader *header) {
    size_t bytes_read;
    uint32_t filesize;

    filesize = header->data_size;

    size_t remaining = filesize - start_byte;
    size_t actual_chunk_size = (remaining < chunk_size) ? remaining : chunk_size; // If the remaining chunk size is smaller than defined chunk sizes

	// Read 60x 8 bytes so that a chunk size of 60*8=480 bytes is read from the file
    bytes_read = fread(data_buf, 8, actual_chunk_size/8, file);	//kernel_read(file, data_buf, actual_chunk_size, &offset);
    if (bytes_read < 0) {
        printf("Error reading WAV data chunk.\n");
        return bytes_read;
    }

    *read_size = bytes_read*8;
    *last = (start_byte + actual_chunk_size >= filesize);
    return 0;
}

unsigned int write_dma(unsigned int *virtual_addr, int offset, unsigned int value)
{
    virtual_addr[offset>>2] = value;

    return 0;
}

unsigned int read_dma(unsigned int *virtual_addr, int offset)
{
    return virtual_addr[offset>>2];
}

void dma_s2mm_status(unsigned int *virtual_addr)
{
    unsigned int status = read_dma(virtual_addr, S2MM_STATUS_REGISTER);

    printf("Stream to memory-mapped status (0x%08x@0x%02x):", status, S2MM_STATUS_REGISTER);

    if (status & STATUS_HALTED) {
		printf(" Halted.\n");
	} else {
		printf(" Running.\n");
	}

    if (status & STATUS_IDLE) {
		printf(" Idle.\n");
	}

    if (status & STATUS_SG_INCLDED) {
		printf(" SG is included.\n");
	}

    if (status & STATUS_DMA_INTERNAL_ERR) {
		printf(" DMA internal error.\n");
	}

    if (status & STATUS_DMA_SLAVE_ERR) {
		printf(" DMA slave error.\n");
	}

    if (status & STATUS_DMA_DECODE_ERR) {
		printf(" DMA decode error.\n");
	}

    if (status & STATUS_SG_INTERNAL_ERR) {
		printf(" SG internal error.\n");
	}

    if (status & STATUS_SG_SLAVE_ERR) {
		printf(" SG slave error.\n");
	}

    if (status & STATUS_SG_DECODE_ERR) {
		printf(" SG decode error.\n");
	}

    if (status & STATUS_IOC_IRQ) {
		printf(" IOC interrupt occurred.\n");
	}

    if (status & STATUS_DELAY_IRQ) {
		printf(" Interrupt on delay occurred.\n");
	}

    if (status & STATUS_ERR_IRQ) {
		printf(" Error interrupt occurred.\n");
	}
}

void dma_mm2s_status(unsigned int *virtual_addr)
{
    unsigned int status = read_dma(virtual_addr, MM2S_STATUS_REGISTER);

    printf("Memory-mapped to stream status (0x%08x@0x%02x):", status, MM2S_STATUS_REGISTER);

    if (status & STATUS_HALTED) {
		printf(" Halted.\n");
	} else {
		printf(" Running.\n");
	}

    if (status & STATUS_IDLE) {
		printf(" Idle.\n");
	}

    if (status & STATUS_SG_INCLDED) {
		printf(" SG is included.\n");
	}

    if (status & STATUS_DMA_INTERNAL_ERR) {
		printf(" DMA internal error.\n");
	}

    if (status & STATUS_DMA_SLAVE_ERR) {
		printf(" DMA slave error.\n");
	}

    if (status & STATUS_DMA_DECODE_ERR) {
		printf(" DMA decode error.\n");
	}

    if (status & STATUS_SG_INTERNAL_ERR) {
		printf(" SG internal error.\n");
	}

    if (status & STATUS_SG_SLAVE_ERR) {
		printf(" SG slave error.\n");
	}

    if (status & STATUS_SG_DECODE_ERR) {
		printf(" SG decode error.\n");
	}

    if (status & STATUS_IOC_IRQ) {
		printf(" IOC interrupt occurred.\n");
	}

    if (status & STATUS_DELAY_IRQ) {
		printf(" Interrupt on delay occurred.\n");
	}

    if (status & STATUS_ERR_IRQ) {
		printf(" Error interrupt occurred.\n");
	}
}

int dma_mm2s_sync(unsigned int *virtual_addr)
{
    unsigned int mm2s_status =  read_dma(virtual_addr, MM2S_STATUS_REGISTER);

	// sit in this while loop as long as the status does not read back 0x00001002 (4098)
	// 0x00001002 = IOC interrupt has occured and DMA is idle
	while(!(mm2s_status & IOC_IRQ_FLAG) || !(mm2s_status & IDLE_FLAG))
	{
        //dma_s2mm_status(virtual_addr);
        dma_mm2s_status(virtual_addr);

        mm2s_status =  read_dma(virtual_addr, MM2S_STATUS_REGISTER);
    }

	return 0;
}

int dma_s2mm_sync(unsigned int *virtual_addr)
{
    unsigned int s2mm_status = read_dma(virtual_addr, S2MM_STATUS_REGISTER);

	// sit in this while loop as long as the status does not read back 0x00001002 (4098)
	// 0x00001002 = IOC interrupt has occured and DMA is idle
	while(!(s2mm_status & IOC_IRQ_FLAG) || !(s2mm_status & IDLE_FLAG))
	{
        dma_s2mm_status(virtual_addr);
        dma_mm2s_status(virtual_addr);

        s2mm_status = read_dma(virtual_addr, S2MM_STATUS_REGISTER);
    }

	return 0;
}

void print_mem(void *virtual_address, int byte_count)
{
	char *data_ptr = virtual_address;

	for(int i=0;i<byte_count;i++){
		printf("%02X", data_ptr[i]);

		// print a space every 4 bytes (0 indexed)
		if(i%4==3){
			printf(" ");
		}
	}

	printf("\n");
}

int main()
{
	struct WavHeader header;
	const char *filename = "testmusic.wav";  // Your WAV file
    //size_t start_byte = 0;                 // Starting byte (after the header)
    //size_t chunk_size = 480;       // Size of the chunk to read
    //bool last = false;                     // Flag to determine if it's the last chunk
    //size_t read_size;                      // The actual number of bytes read
    size_t data_size;
	uint32_t zp_data_size = 0; // Size of the zero padded data (2 * 24 bit = 48 bit so 16 bit zero padded to 64 bit)

	printf("Reading WAV file header.\n");

	printf("Open the DDR memory as a file descriptor...\n");
	int ddr_memory = open("/dev/mem", O_RDWR | O_SYNC);

	FILE *file = fopen(filename, "rb");

	load_wav_header(file, &data_size, &header);
	size_t num_blocks = (header.data_size + 5) / 6; // Aantal blokken (6 bytes per blok)
    printf("Number of blocks to read: %d\n", num_blocks);
    zp_data_size = num_blocks * sizeof(uint64_t);  // 64-bits woorden (8 bytes per blok)
    //zp_data_size = ((zp_data_size + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1)); // Afronden op paginagrootte
    printf("Total amount of bytes to write: %d\n", zp_data_size);

	printf("Memory map the MM2S source address register block where the WAV will be stored.\n");
    unsigned long *virtual_src_addr  = mmap(NULL, zp_data_size, PROT_READ | PROT_WRITE, MAP_SHARED, ddr_memory, CMA_BASE_ADDRESS);
	printf("Source memory addr: %p\n", virtual_src_addr);

    unsigned long aligned_address = (CMA_BASE_ADDRESS + zp_data_size + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1);

	//printf("Memory map the S2MM destination address register block.\n");
    //printf("Aligned address: %p\n", aligned_address);
    //unsigned long *virtual_dst_addr = mmap(NULL, zp_data_size, PROT_READ | PROT_WRITE, MAP_SHARED, ddr_memory, aligned_address);
	//printf("Destination memory addr: %p\n", virtual_dst_addr);

	// Pointer for iteration
    uint64_t *current_addr = virtual_src_addr;

    // Read and shift 6 bytes at a time
    uint8_t buffer[6];
    size_t max_words = zp_data_size / sizeof(uint64_t);
    printf("Max words: %d\n", max_words);
    size_t written_words = 0;

    while (fread(buffer, 1, 6, file) > 0) {
        if (written_words >= max_words) {
            fprintf(stderr, "Error: Attempted to write beyond allocated memory\n");
            break;
        }

        uint64_t word = 0;
        for (int i = 0; i < 6; i++) {
            word |= ((uint64_t)buffer[i] << (8 * (5 - i)));
        }
        word <<= 16;
        *current_addr = word;

        current_addr++;
        written_words++;
    }

    printf("Written words: %d\n", written_words);

	fclose(file);

    printf("----------------------------\n");

	printf("Running DMA transfer of WAV file.\n");

	printf("Memory map the address of the DMA AXI IP via its AXI lite control interface register block.\n");
    unsigned int *dma_virtual_addr = mmap(NULL, 65535, PROT_READ | PROT_WRITE, MAP_SHARED, ddr_memory, DMA_BASE_ADDRESS);

	//printf("Clearing the destination register block...\n");
    //memset(virtual_dst_addr, 0, zp_data_size);

    printf("Source memory block data:      ");
	print_mem(virtual_src_addr, 64);

    //printf("Destination memory block data: ");
	//print_mem(virtual_dst_addr, 64);

    printf("Reset the DMA.\n");
    write_dma(dma_virtual_addr, S2MM_CONTROL_REGISTER, RESET_DMA);
    write_dma(dma_virtual_addr, MM2S_CONTROL_REGISTER, RESET_DMA);
    dma_s2mm_status(dma_virtual_addr);
    dma_mm2s_status(dma_virtual_addr);

	printf("Halt the DMA.\n");
    write_dma(dma_virtual_addr, S2MM_CONTROL_REGISTER, HALT_DMA);
    write_dma(dma_virtual_addr, MM2S_CONTROL_REGISTER, HALT_DMA);
    dma_s2mm_status(dma_virtual_addr);
    dma_mm2s_status(dma_virtual_addr);

	printf("Enable all interrupts.\n");
    write_dma(dma_virtual_addr, S2MM_CONTROL_REGISTER, ENABLE_ALL_IRQ);
    write_dma(dma_virtual_addr, MM2S_CONTROL_REGISTER, ENABLE_ALL_IRQ);
    dma_s2mm_status(dma_virtual_addr);
    dma_mm2s_status(dma_virtual_addr);

    printf("Writing source address of the data from MM2S in DDR...\n");
    write_dma(dma_virtual_addr, MM2S_SRC_ADDRESS_REGISTER, CMA_BASE_ADDRESS);
    dma_mm2s_status(dma_virtual_addr);

    //printf("Writing the destination address for the data from S2MM in DDR...\n");
    //write_dma(dma_virtual_addr, S2MM_DST_ADDRESS_REGISTER, aligned_address);
    //dma_s2mm_status(dma_virtual_addr);

	printf("Run the MM2S channel.\n");
    write_dma(dma_virtual_addr, MM2S_CONTROL_REGISTER, RUN_DMA);
    dma_mm2s_status(dma_virtual_addr);

	//printf("Run the S2MM channel.\n");
    //write_dma(dma_virtual_addr, S2MM_CONTROL_REGISTER, RUN_DMA);
    //dma_s2mm_status(dma_virtual_addr);

	/*
	Transfer length: max 64MB, because the current hardware design 
	has a max DMA buffer length of 26 bit.
	*/

    printf("Writing MM2S transfer length of zp_data_size bytes...\n");
    write_dma(dma_virtual_addr, MM2S_TRNSFR_LENGTH_REGISTER, zp_data_size);
    dma_mm2s_status(dma_virtual_addr);

    //printf("Writing S2MM transfer length of 64 bytes...\n");
    //write_dma(dma_virtual_addr, S2MM_BUFF_LENGTH_REGISTER, zp_data_size);
    //dma_s2mm_status(dma_virtual_addr);

    printf("Waiting for MM2S synchronization...\n");
    dma_mm2s_sync(dma_virtual_addr);

    //printf("Waiting for S2MM sychronization...\n");
    //dma_s2mm_sync(dma_virtual_addr);

    //dma_s2mm_status(dma_virtual_addr);
    dma_mm2s_status(dma_virtual_addr);

    //printf("Destination memory block: ");
	//print_mem(virtual_dst_addr, 64);

    printf("------------------------------\n");
	printf("Transfer done! :)\n");

	munmap(dma_virtual_addr, 0x10000);
	//munmap(virtual_dst_addr, zp_data_size);
	munmap(virtual_src_addr, zp_data_size);
	close(ddr_memory);

    return 0;
}
