# Qt Audio Effects Widget

## Qt Audio Effects Widget C++ code

We developed an AudioEffectWidget class that inherits from `QWidget` to manage the control of effects and filters on the analog and DMA audio signals. This includes a great deal of `QLabels` to visualise all the current values for frequencies, effect parameters, gains and so on.

To control the system and our application, we use a `QProcess` that runs the `receive_midi_data.py` Python code. This Python code can be found in our MIDI documentation. The C++ code has a method `handleMidiProcessOutput()` to process the MIDI messages.

To calculate the coefficients of the high and low pass filters, we use a `QProcess` that runs the `filter_process.py` Python code. This Python process outputs the coefficients, which are catched and extracted with a regular expression. The coefficients of the shelving filters are directly calculated in our C++ code.

```python
import sys
from scipy import signal

def calculate_filter(type, order, frequency):
    wn = frequency/(48000/2) # natural frequency between 0 and 1
    sos = signal.iirfilter(order, wn, btype=type, output = 'sos', ftype='butter')
    print(sos, flush=True)

def main():
    while True:
        user_input = sys.stdin.readline().strip()
        if user_input == "exit":
            break
    
        try:
            type, order, frequency = user_input.split(' ')
            frequency = int(frequency)
            order = int(order)
            if type not in ['lowpass', 'highpass']:
                raise ValueError("Invalid filter type")
            calculate_filter(type, order, frequency)
        except Exception as e:
            print(f"Error: {e}")

if __name__ == "__main__":
    main()
```

Below is the header file for the AudioEffectWidget class (`audioeffectwidget.h`), including some structs, enums, slots and methods that facilitate the functionality of the widget. The complete implementation of this declaration can be found in the GitLab repository associated with this project (in `/Ultra96v2-GUI/audioeffectwidget.cpp`). The `writeToAxi(off_t reg_offset, auto val)`-method is used to write to the AXI registers. Because this uses devmem, the Qt program needs to be ran as root. Important is that the used Python packages are also installed as root.

```cpp
#ifndef AUDIOEFFECTWIDGET_H
#define AUDIOEFFECTWIDGET_H

#include <QWidget>
#include <QLabel>
#include <QLabel>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QLabel>
#include <QFrame>
#include <QProcess>
#include <iostream>
#include <QProcessEnvironment>
#include <QRegularExpression>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <cmath>
#include <sg14/fixed_point>

#define FREQUENCY_FILTER_LOWER_BOUND 50
#define FREQUENCY_FILTER_UPPER_BOUND 20000
#define SATURATION_LOWER_BOUND 1
#define SATURATION_UPPER_BOUND 1
#define ECHO_LOWER_BOUND 0
#define ECHO_UPPER_BOUND 0.8
#define RING_MODULATION_LOWER_BOUND 0
#define RING_MODULATION_UPPER_BOUND 1024
#define LOW_BANDWIDTH_LOWER_BOUND 100
#define LOW_BANDWIDTH_UPPER_BOUND 500
#define HIGH_BANDWIDTH_LOWER_BOUND 2500
#define HIGH_BANDWIDTH_UPPER_BOUND 10000
#define AXI_BASE_ADDR 0xA0050000
#define MMAP_SIZE 0x10000

struct ShelvingCoefficients {
    float a1_1;
    float a2_1;
    float b0_1;
    float b1_1;
    float b2_1;
    float a1_2;
    float a2_2;
    float b0_2;
    float b1_2;
    float b2_2;

    // Constructor
    ShelvingCoefficients(float a1_1_val, float a2_1_val, float b0_1_val,
                         float b1_1_val, float b2_1_val, float a1_2_val,
                         float a2_2_val, float b0_2_val, float b1_2_val,
                         float b2_2_val)
        : a1_1(a1_1_val), a2_1(a2_1_val), b0_1(b0_1_val), b1_1(b1_1_val),
        b2_1(b2_1_val), a1_2(a1_2_val), a2_2(a2_2_val), b0_2(b0_2_val),
        b1_2(b1_2_val), b2_2(b2_2_val)
    {}
};

enum AudioEffect {
    ANALOG_SATURATION,
    ANALOG_ECHO,
    ANALOG_RING_MODULATION,
    DMA_SATURATION,
    DMA_ECHO,
    DMA_RING_MODULATION,
    NO_EFFECT
};

enum FilterBandwith {
    ANALOG_LOW_BANDWIDTH,
    ANALOG_HIGH_BANDWIDTH,
    DMA_LOW_BANDWIDTH,
    DMA_HIGH_BANDWIDTH
};

class AudioEffectWidget : public QWidget
{
    Q_OBJECT

public:
    explicit AudioEffectWidget(QWidget *parent = nullptr);
    ~AudioEffectWidget();

private slots:
    // MIDI process helper method
    void handleMidiProcessOutput();
    // High - and lowpass helper methods
    void handleAnalogHighpassFilterProcess();
    void handleAnalogLowpassFilterProcess();
    void handleDmaHighpassFilterProcess();
    void handleDmaLowpassFilterProcess();

private:
    int writeToAxi(off_t reg_offset, auto val);
    QProcess* startPythonProcess(QString pythonScript);

    // Shelving filter helper methods
    ShelvingCoefficients calculateHighShelfFilter(int bandwidth, int dBgain);
    ShelvingCoefficients calculateLowShelfFilter(int bandwidth, int dBgain);
    void writeHighShelfFilterParameters(ShelvingCoefficients coefficients, int leftChannel, int rightChannel);
    void writeBandShelfFilterParameters(ShelvingCoefficients highFilterCoefficients, ShelvingCoefficients lowFilterCoefficients, int leftChannel, int rightChannel);
    void writeLowShelfFilterParameters(ShelvingCoefficients coefficients, int leftChannel, int rightChannel);
    void writeBandShelfGain(float gain, int leftChannel, int rightChannel);


    void writeLowpassFilterParameters(ShelvingCoefficients coefficients, int leftChannel, int rightChannel);
    void writeHighpassFilterParameters(ShelvingCoefficients coefficients, int leftChannel, int rightChannel);
    ShelvingCoefficients disableFilterCoefficients {1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0};

    // Effect helper methods
    void writeEchoValue(double echoValue, int leftChannel, int rightChannel);
    void writeSaturationValue(int saturationValue, int leftChannel, int rightChannel);

    // Layout helper methods
    QLabel* createCustomValueLabel(const QString& defaultValue);
    QVBoxLayout* createLabelAndWidget(const QString& labelText, QWidget* widget, QWidget* parent);
    QVBoxLayout* createSectionLayout(QLabel* high, QLabel* mid, QLabel* low, QLabel* highPass, QLabel* lowPass, QLabel* volume, QLabel* saturation, QLabel* echo, QLabel* ringMod, QLabel* highBandwidth, QLabel* lowBandwidth, const QString& sectionTitle, QWidget* parent);

    // Interface widgets
    QLabel* analogHighValueLabel;
    QLabel* analogMidValueLabel;
    QLabel* analogLowValueLabel;
    QLabel* analogHighBandwidthValueLabel;
    QLabel* analogLowBandwidthValueLabel;
    QLabel* analogHighpassValueLabel;
    QLabel* analogLowpassValueLabel;
    QLabel* analogSaturationValueLabel;
    QLabel* analogEchoValueLabel;
    QLabel* analogRingModulationValueLabel;
    QLabel* analogVolumeValueLabel;
    QLabel* dmaHighValueLabel;
    QLabel* dmaMidValueLabel;
    QLabel* dmaLowValueLabel;
    QLabel* dmaHighBandwidthValueLabel;
    QLabel* dmaLowBandwidthValueLabel;
    QLabel* dmaHighpassValueLabel;
    QLabel* dmaLowpassValueLabel;
    QLabel* dmaSaturationValueLabel;
    QLabel* dmaEchoValueLabel;
    QLabel* dmaRingModulationValueLabel;
    QLabel* dmaVolumeValueLabel;
    QLabel* masterVolumeValueLabel;

    // QProcess to run Python processes
    QProcess *midiProcess;
    QProcess *analogHighpassFilterProcess;
    QProcess *analogLowpassFilterProcess;
    QProcess *dmaHighpassFilterProcess;
    QProcess *dmaLowpassFilterProcess;

    // Selection instances
    AudioEffect selectedAudioEffect;
    FilterBandwith selectedAnalogBandwidth;
    FilterBandwith selectedDmaBandwidth;
};

#endif // AUDIOEFFECTWIDGET_H

```

## Qt Audio Effect Widget functionality

The image below illustrates our Qt Audio Effect Widget. When the system is controlled with the Reloop BeatMix, the code will read the MIDI messages, determine the corresponding action and update the application accordingly.

<img src="/img/qt-audio-effect-widget.png"/>
