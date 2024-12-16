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

#define FREQUENCY_FILTER_LOWER_BOUND 200
#define FREQUENCY_FILTER_UPPER_BOUND 20000
#define SATURATION_LOWER_BOUND 1
#define SATURATION_UPPER_BOUND 50
#define ECHO_LOWER_BOUND 0
#define ECHO_UPPER_BOUND 0.8
#define RING_MODULATION_LOWER_BOUND 0
#define RING_MODULATION_UPPER_BOUND 1024
#define LOW_BANDWIDTH_LOWER_BOUND 0
#define LOW_BANDWIDTH_UPPER_BOUND 1000
#define HIGH_BANDWIDTH_LOWER_BOUND 1000
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
