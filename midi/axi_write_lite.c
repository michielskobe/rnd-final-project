#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <time.h>

#define AXI_BASE_ADDR 0xA0040000    // AXI base address
#define AXI_START_OFFSET 0x00       // Starting offset 
#define AXI_OFFSET_SIZE 0x04       //  Offset size 
#define MMAP_SIZE 0x10000           // Size of memory to map (64KB in this case)

void* axi_base_addr = NULL; // Will be initialized via mmap

// Function to parse a binary string (e.g., "0b10010000") into a uint8_t
uint8_t parse_binary(const char *binary_str) {
    return (uint8_t)strtol(binary_str + 2, NULL, 2);  // Skip "0b" prefix
}

// Function to process a single line of the input
int process_line(const char *line, uint32_t *data_out) {
    char bin1[16], bin2[16], bin3[16];

    // Parse the three binary values from the line
    if (sscanf(line, "%15s %15s %15s", bin1, bin2, bin3) != 3) {
        fprintf(stderr, "Error parsing line: %s\n", line);
        return -1;
    }

    // Convert binary strings to integers
    uint8_t byte1 = parse_binary(bin1);
    uint8_t byte2 = parse_binary(bin2);
    uint8_t byte3 = parse_binary(bin3);

    // Combine into a single 32-bit word
    *data_out = (byte1 << 16) | (byte2 << 8) | byte3;

    return 0;
}

// Function to write to AXI-Lite memory
void axi_lite_write(volatile uint32_t *base_addr, uint32_t val, uint32_t offset) {
    if (offset % AXI_OFFSET_SIZE != 0) {
        fprintf(stderr, "Error: Offset 0x%08x is not 4-byte aligned\n", offset);
        return;
    }

    // Perform write to the mapped memory
    base_addr[offset / AXI_OFFSET_SIZE] = val;

    // Read back to verify
    uint32_t read_back = base_addr[offset / AXI_OFFSET_SIZE];
    printf("AXI Write: Offset=0x%08x Value=0x%08x (Read Back=0x%08x)\n", offset, val, read_back);
}

// Function to process the file
void process_file(const char *filename) {
    FILE *file = fopen(filename, "r+");
    FILE *temp_file = tmpfile();
    char line[128];
    uint32_t data;
    uint32_t offset = AXI_START_OFFSET;

    if (!file || !temp_file) {
        perror("Error opening file");
        exit(EXIT_FAILURE);
    }

    while (fgets(line, sizeof(line), file)) {
        // Remove newline characters
        line[strcspn(line, "\r\n")] = 0;

        if (process_line(line, &data) == 0) {
            // Write the 32-bit packed data to AXI memory
            axi_lite_write((volatile uint32_t *)axi_base_addr, data, offset);
            offset += AXI_OFFSET_SIZE;  // Increment offset
        } else {
            // Copy invalid or unprocessed lines to temp file
            fprintf(temp_file, "%s\n", line);
        }
    }

    // Replace original file with temporary file contents
    rewind(temp_file);
    freopen(filename, "w", file);
    while (fgets(line, sizeof(line), temp_file)) {
        fprintf(file, "%s", line);
    }

    fclose(file);
    fclose(temp_file);
}

// Main function
int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return EXIT_FAILURE;
    }

    const char *filename = argv[1];

    // Open /dev/mem to map the physical address into user space
    int mem_fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (mem_fd == -1) {
        perror("Error opening /dev/mem");
        return EXIT_FAILURE;
    }

    // Map AXI memory to user space (using mmap)
    axi_base_addr = mmap(NULL, MMAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, mem_fd, AXI_BASE_ADDR);
    if (axi_base_addr == MAP_FAILED) {
        perror("Error mapping AXI memory");
        close(mem_fd);
        return EXIT_FAILURE;
    }

    // Process the file and write to AXI memory
    process_file(filename);

    // Clean up and close /dev/mem
    if (munmap(axi_base_addr, MMAP_SIZE) == -1) {
        perror("Error unmapping memory");
    }
    close(mem_fd);

    return EXIT_SUCCESS;
}