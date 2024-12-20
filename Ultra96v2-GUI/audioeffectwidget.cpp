#include "audioeffectwidget.h"

using namespace sg14;

AudioEffectWidget::AudioEffectWidget(QWidget *parent)
    : QWidget(parent), midiProcess(new QProcess(this)), analogHighpassFilterProcess(new QProcess(this)), analogLowpassFilterProcess(new QProcess(this)), dmaHighpassFilterProcess(new QProcess(this)), dmaLowpassFilterProcess(new QProcess(this))
{
    // Initialize Analog Section Widgets
    analogHighValueLabel = createCustomValueLabel("0dB");
    analogMidValueLabel = createCustomValueLabel("0dB");
    analogLowValueLabel = createCustomValueLabel("0dB");
    analogHighBandwidthValueLabel = createCustomValueLabel("2000Hz");
    analogLowBandwidthValueLabel = createCustomValueLabel("200Hz");
    analogHighpassValueLabel = createCustomValueLabel(QString::number(FREQUENCY_FILTER_LOWER_BOUND) + "Hz");
    analogLowpassValueLabel = createCustomValueLabel(QString::number(FREQUENCY_FILTER_LOWER_BOUND) + "Hz");
    analogSaturationValueLabel = createCustomValueLabel("1");
    analogEchoValueLabel = createCustomValueLabel("0");
    analogRingModulationValueLabel = createCustomValueLabel("OFF");
    analogVolumeValueLabel = createCustomValueLabel("0%");

    // Initialize DMA Section Widgets
    dmaHighValueLabel = createCustomValueLabel("0dB");
    dmaMidValueLabel = createCustomValueLabel("0dB");
    dmaLowValueLabel = createCustomValueLabel("0dB");
    dmaHighBandwidthValueLabel = createCustomValueLabel("2000Hz");
    dmaLowBandwidthValueLabel = createCustomValueLabel("200Hz");
    dmaHighpassValueLabel = createCustomValueLabel(QString::number(FREQUENCY_FILTER_LOWER_BOUND) + "Hz");
    dmaLowpassValueLabel = createCustomValueLabel(QString::number(FREQUENCY_FILTER_LOWER_BOUND) + "Hz");
    dmaSaturationValueLabel = createCustomValueLabel("1");
    dmaEchoValueLabel = createCustomValueLabel("0");
    dmaRingModulationValueLabel = createCustomValueLabel("OFF");
    dmaVolumeValueLabel = createCustomValueLabel("0%");

    // Master Volume Label
    masterVolumeValueLabel = createCustomValueLabel("0%");

    // Set default select effect
    selectedAudioEffect = NO_EFFECT;
    selectedAnalogBandwidth = ANALOG_LOW_BANDWIDTH;
    analogLowBandwidthValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");
    selectedDmaBandwidth = DMA_LOW_BANDWIDTH;
    dmaLowBandwidthValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");

    // Start Python processes
    midiProcess = startPythonProcess("receive_midi_data.py");
    connect(midiProcess, &QProcess::readyReadStandardOutput, this, &AudioEffectWidget::handleMidiProcessOutput);

    analogHighpassFilterProcess = startPythonProcess("filter_process.py");
    connect(analogHighpassFilterProcess, &QProcess::readyReadStandardOutput, this, &AudioEffectWidget::handleAnalogHighpassFilterProcess);

    analogLowpassFilterProcess = startPythonProcess("filter_process.py");
    connect(analogLowpassFilterProcess, &QProcess::readyReadStandardOutput, this, &AudioEffectWidget::handleAnalogLowpassFilterProcess);

    dmaHighpassFilterProcess = startPythonProcess("filter_process.py");
    connect(dmaHighpassFilterProcess, &QProcess::readyReadStandardOutput, this, &AudioEffectWidget::handleDmaHighpassFilterProcess);

    dmaLowpassFilterProcess = startPythonProcess("filter_process.py");
    connect(dmaLowpassFilterProcess, &QProcess::readyReadStandardOutput, this, &AudioEffectWidget::handleDmaLowpassFilterProcess);


    // Create Analog Section Layout
    QVBoxLayout* analogLayout = createSectionLayout(
        analogHighValueLabel, analogMidValueLabel, analogLowValueLabel,
        analogHighpassValueLabel, analogLowpassValueLabel, analogVolumeValueLabel,
        analogSaturationValueLabel, analogEchoValueLabel, analogRingModulationValueLabel,
        analogHighBandwidthValueLabel, analogLowBandwidthValueLabel,
        "Analog Input Source", this
        );

    // Create DMA Section Layout
    QVBoxLayout* dmaLayout = createSectionLayout(
        dmaHighValueLabel, dmaMidValueLabel, dmaLowValueLabel,
        dmaHighpassValueLabel, dmaLowpassValueLabel, dmaVolumeValueLabel,
        dmaSaturationValueLabel, dmaEchoValueLabel, dmaRingModulationValueLabel,
        dmaHighBandwidthValueLabel, dmaLowBandwidthValueLabel,
        "DMA Input Source", this
        );

    // Create Separator
    QFrame* separator = new QFrame(this);
    separator->setFrameShape(QFrame::VLine);
    separator->setFrameShadow(QFrame::Sunken);
    separator->setLineWidth(3);
    separator->setStyleSheet("background-color: #9e9e9e; margin: 0 10px;");

    // Combine Sections into Main Horizontal Layout
    QHBoxLayout* mainLayout = new QHBoxLayout;
    mainLayout->addLayout(analogLayout);
    mainLayout->addWidget(separator);
    mainLayout->addLayout(dmaLayout);
    mainLayout->setContentsMargins(20, 0, 20, 20);

    // Create Master Volume Layout
    QVBoxLayout* masterVolumeLayout = new QVBoxLayout;
    QLabel* masterVolumeLabel = new QLabel("Master Volume", this);
    masterVolumeLabel->setAlignment(Qt::AlignCenter);
    masterVolumeLabel->setStyleSheet("font-weight: bold; font-size: 16px; margin: 10px;");
    masterVolumeLayout->addWidget(masterVolumeLabel);
    masterVolumeLayout->addWidget(masterVolumeValueLabel);
    masterVolumeLayout->setSpacing(10);
    masterVolumeLayout->setAlignment(Qt::AlignCenter);

    // Combine All Sections Into Main Vertical Layout
    QVBoxLayout* mainVerticalLayout = new QVBoxLayout;
    mainVerticalLayout->addLayout(mainLayout); // Add the combined analog and DMA layout
    mainVerticalLayout->addLayout(masterVolumeLayout); // Add the master volume layout below
    mainVerticalLayout->setContentsMargins(20, 0, 20, 20);

    mainVerticalLayout->setContentsMargins(20, 10, 20, 10); // Reduced margins
    mainLayout->setContentsMargins(0, 0, 0, 0); // Inner horizontal layout margins
    masterVolumeLayout->setContentsMargins(0, 10, 0, 0); // Master volume margins


    // Set the layout for the widget
    setLayout(mainVerticalLayout);
    setMinimumSize(1000, 400);

    auto value = make_fixed<8, 23>{0.446684};
    writeToAxi(0x00, value.data());

}

AudioEffectWidget::~AudioEffectWidget()
{
    midiProcess->terminate();
    analogHighpassFilterProcess->terminate();
    analogLowpassFilterProcess->terminate();
    dmaHighpassFilterProcess->terminate();
    dmaLowpassFilterProcess->terminate();
}

QProcess* AudioEffectWidget::startPythonProcess(QString pythonScript){
    QProcess *process = new QProcess;
    process->start("python", QStringList() << "-u" << pythonScript);
    if (process->waitForStarted()) {
        std::cout << pythonScript.toStdString() << " started successfully!" << std::endl;
    } else {
        std::cerr << "Failed to start " << pythonScript.toStdString() << "!" << std::endl;
    }
    return process;
}

void AudioEffectWidget::handleMidiProcessOutput() {
    QString output = midiProcess->readAllStandardOutput();
    QRegularExpression regex(R"(\[(\d+), (\d+), (\d+)\])");
    QRegularExpressionMatch match = regex.match(output);
    if (match.hasMatch()) {
        int statusByte = match.captured(1).toInt();
        int controllerByte = match.captured(2).toInt();
        int valueByte = match.captured(3).toInt();
        switch (statusByte) {
            case 176: { // Control for analog sigal
                switch (controllerByte) {
                    case 48: { // Lowpass filter control
                        // Normalize and map MIDI value to correct frequency
                        float normalizedValue = valueByte / 127.0f;
                        int frequencyValue = FREQUENCY_FILTER_LOWER_BOUND + normalizedValue * (FREQUENCY_FILTER_UPPER_BOUND - FREQUENCY_FILTER_LOWER_BOUND);

                        // Calculate filter parameters
                        QString input = "lowpass 2 " + QString::number(frequencyValue);
                        analogLowpassFilterProcess->write(input.toUtf8() + '\n');

                        // Update value in interface
                        analogLowpassValueLabel->setText(QString("%1Hz").arg(round(frequencyValue)));
                        break;
                    }
                    case 49: { // Highpass filter control
                        // Normalize and map MIDI value to correct frequency
                        float normalizedValue = valueByte / 127.0f;
                        int frequencyValue = FREQUENCY_FILTER_LOWER_BOUND + normalizedValue * (FREQUENCY_FILTER_UPPER_BOUND - FREQUENCY_FILTER_LOWER_BOUND);

                        // Calculate filter parameters
                        QString input = "highpass 4 " + QString::number(frequencyValue);
                        analogHighpassFilterProcess->write(input.toUtf8() + '\n');

                        // Update value in interface
                        analogHighpassValueLabel->setText(QString("%1Hz").arg(round(frequencyValue)));
                        break;
                    }
                    case 50: { // Bandwidth control
                        if (selectedAnalogBandwidth == ANALOG_LOW_BANDWIDTH) {
                            // Normalize and map MIDI value to correct frequency
                            float normalizedValue = valueByte / 127.0f;
                            int frequencyValue = LOW_BANDWIDTH_LOWER_BOUND + normalizedValue * (LOW_BANDWIDTH_UPPER_BOUND - LOW_BANDWIDTH_LOWER_BOUND);

                            // Update value in interface
                            analogLowBandwidthValueLabel->setText(QString("%1Hz").arg(round(frequencyValue)));
                        }
                        else if (selectedAnalogBandwidth == ANALOG_HIGH_BANDWIDTH) {
                            // Normalize and map MIDI value to correct frequency
                            float normalizedValue = valueByte / 127.0f;
                            int frequencyValue = HIGH_BANDWIDTH_LOWER_BOUND + normalizedValue * (HIGH_BANDWIDTH_UPPER_BOUND - HIGH_BANDWIDTH_LOWER_BOUND);

                            // Update value in interface
                            analogHighBandwidthValueLabel->setText(QString("%1Hz").arg(round(frequencyValue)));
                        }
                        QRegularExpression bandwidthRegex(R"((\d+)(?=Hz))");
                        QRegularExpressionMatch lowerMatch = bandwidthRegex.match(analogLowBandwidthValueLabel->text());
                        QRegularExpressionMatch higherMatch = bandwidthRegex.match(analogHighBandwidthValueLabel->text());
                        float lowerBandwidth = lowerMatch.captured(1).toFloat();
                        float higherBandwidth = higherMatch.captured(1).toFloat();
                        QRegularExpression gainRegex(R"((-?\d+)(?=dB))");
                        QRegularExpressionMatch highGainMatch = gainRegex.match(analogHighValueLabel->text());
                        QRegularExpressionMatch midGainMatch = gainRegex.match(analogMidValueLabel->text());
                        QRegularExpressionMatch lowGainMatch = gainRegex.match(analogLowValueLabel->text());
                        int highGain = highGainMatch.captured(1).toInt();
                        int midGain = midGainMatch.captured(1).toInt();
                        int lowGain = lowGainMatch.captured(1).toInt();

                        // Calculate filter coefficients
                        ShelvingCoefficients highShelftFilterCoefficients = calculateHighShelfFilter(higherBandwidth, highGain);
                        ShelvingCoefficients highBandShelfFilterCoefficients = calculateHighShelfFilter(higherBandwidth, -midGain);
                        ShelvingCoefficients lowBandShelfFilterCoefficients = calculateLowShelfFilter(lowerBandwidth, -midGain);
                        ShelvingCoefficients lowShelfFilterCoefficients = calculateLowShelfFilter(lowerBandwidth, lowGain);

                        // Write coefficients to AXI
                        writeHighShelfFilterParameters(highShelftFilterCoefficients, 0, 1);
                        writeBandShelfFilterParameters(highBandShelfFilterCoefficients, lowBandShelfFilterCoefficients, 0, 1);
                        writeLowShelfFilterParameters(lowShelfFilterCoefficients, 0, 1);

                        // Write gain to AXI
                        float convertedMidGain = pow(10, midGain / 20.0f);
                        writeBandShelfGain(convertedMidGain, 0, 1);
                        break;
                    }
                    case 51: { // High Shelf filter control
                        // Normalize and map gain to dB value
                        float gain = 0;
                        if (valueByte >= 64) {
                            // Map values above or equal to 64 to the range [0, 6]
                            gain = 0 + ((valueByte - 64) / float(127 - 64)) * (6 - 0);
                        } else {
                            // Map values below 64 to the range [-26, 0]
                            gain = -26 + ((valueByte - 0) / float(64 - 0)) * (0 - (-26));
                        }

                        // Get higher filter bandwidth value
                        QRegularExpression regex(R"((\d+)(?=Hz))");
                        QRegularExpressionMatch match = regex.match(analogHighBandwidthValueLabel->text());
                        float bandwidth = match.captured(1).toInt();

                        // Calculate filter coefficients
                        ShelvingCoefficients coefficients = calculateHighShelfFilter(bandwidth, gain);

                        // Write coefficients to AXI
                        writeHighShelfFilterParameters(coefficients, 0, 1);

                        // Update value in interface
                        analogHighValueLabel->setText(QString("%1dB").arg(round(gain)));
                        break;
                    }
                    case 52: { // Band Shelf filter control
                        // Normalize and map gain to dB value
                        float gain = 0;
                        if (valueByte >= 64) {
                            // Map values above or equal to 64 to the range [0, 6]
                            gain = 0 + ((valueByte - 64) / float(127 - 64)) * (6 - 0);
                        } else {
                            // Map values below 64 to the range [-26, 0]
                            gain = -26 + ((valueByte - 0) / float(64 - 0)) * (0 - (-26));
                        }

                        // Get lower and higher bandwidth value
                        QRegularExpression regex(R"((\d+)(?=Hz))");
                        QRegularExpressionMatch lowerMatch = regex.match(analogLowBandwidthValueLabel->text());
                        QRegularExpressionMatch higherMatch = regex.match(analogHighBandwidthValueLabel->text());
                        float lowerBandwidth = lowerMatch.captured(1).toInt();
                        float higherBandwidth = higherMatch.captured(1).toInt();

                        // Calculate filter coefficients
                        ShelvingCoefficients lowFilterCoefficients = calculateLowShelfFilter(lowerBandwidth, -gain);
                        ShelvingCoefficients highFilterCoefficients = calculateHighShelfFilter(higherBandwidth, -gain);

                        // Get previous gain value
                        QRegularExpression gainRegex(R"((\d+)(?=dB))");
                        QRegularExpressionMatch gainMatch = gainRegex.match(analogMidValueLabel->text());
                        float previousGain = pow(10, gainMatch.captured(1).toInt() / 20.0f);
                        float newGain = pow(10, gain / 20.0f);

                        if (newGain > previousGain){
                            // Write coefficients to AXI
                            writeBandShelfFilterParameters(highFilterCoefficients, lowFilterCoefficients, 0, 1);
                            // Write gain to AXI
                            writeBandShelfGain(newGain, 0, 1);
                        } else {
                            // Write gain to AXI
                            writeBandShelfGain(newGain, 0, 1);
                            // Write coefficients to AXI
                            writeBandShelfFilterParameters(highFilterCoefficients, lowFilterCoefficients, 0, 1);
                        }

                        // Update value in interface
                        analogMidValueLabel->setText(QString("%1dB").arg(round(gain)));
                        break;
                    }
                    case 53: { // Low Shelf filter control
                        // Normalize and map gain to dB value
                        float gain = 0;
                        if (valueByte >= 64) {
                            // Map values above or equal to 64 to the range [0, 6]
                            gain = 0 + ((valueByte - 64) / float(127 - 64)) * (6 - 0);
                        } else {
                            // Map values below 64 to the range [-26, 0]
                            gain = -26 + ((valueByte - 0) / float(64 - 0)) * (0 - (-26));
                        }

                        // Get lower filter bandwidth value
                        QRegularExpression regex(R"((\d+)(?=Hz))");
                        QRegularExpressionMatch match = regex.match(analogLowBandwidthValueLabel->text());
                        float bandwidth = match.captured(1).toInt();

                        // Calculate filter coefficients
                        ShelvingCoefficients coefficients = calculateLowShelfFilter(bandwidth, gain);

                        // Write coefficients to AXI
                        writeLowShelfFilterParameters(coefficients, 0, 1);

                        // Update value in interface
                        analogLowValueLabel->setText(QString("%1dB").arg(round(gain)));
                        break;
                    }
                    case 55: { // Volume control
                        // Normalize volume
                        float volumeValue = valueByte / 127.0f;

                        auto fixedVolume = make_fixed<8, 23>{volumeValue};
                        writeToAxi(0x174, fixedVolume.data());
                        // Write channel adress (analog left)
                        writeToAxi(0x170,0);
                        // Set strobe
                        writeToAxi(0x178,1);
                        // Write channel adress (analog right)
                        writeToAxi(0x170,1);
                        // Clear strobe
                        writeToAxi(0x178,0);

                        // Update value in interface
                        analogVolumeValueLabel->setText(QString("%1%").arg(round(volumeValue*100)));
                        break;
                    }
                    default : {
                        break;
                    }
                }
            }
            break;
            case 177: { // Control for DMA signal
                switch(controllerByte) {
                    case 64: { // Lowpass filter control
                        // Normalize and map MIDI value to correct frequency
                        float normalizedValue = valueByte / 127.0f;
                        int frequencyValue = FREQUENCY_FILTER_LOWER_BOUND + normalizedValue * (FREQUENCY_FILTER_UPPER_BOUND - FREQUENCY_FILTER_LOWER_BOUND);

                        // Calculate filter parameters
                        QString input = "lowpass 2 " + QString::number(frequencyValue);
                        dmaLowpassFilterProcess->write(input.toUtf8() + '\n');

                        // Update value in interface
                        dmaLowpassValueLabel->setText(QString("%1Hz").arg(round(frequencyValue)));
                        break;
                    }
                    case 65: { // Highpass filter control
                        // Normalize and map MIDI value to correct frequency
                        float normalizedValue = valueByte / 127.0f;
                        int frequencyValue = FREQUENCY_FILTER_LOWER_BOUND + normalizedValue * (FREQUENCY_FILTER_UPPER_BOUND - FREQUENCY_FILTER_LOWER_BOUND);

                        // Calculate filter parameters
                        QString input = "highpass 4 " + QString::number(frequencyValue);
                        dmaHighpassFilterProcess->write(input.toUtf8() + '\n');

                        // Update value in interface
                        dmaHighpassValueLabel->setText(QString("%1Hz").arg(round(frequencyValue)));
                        break;
                    }
                    case 66: { // Bandwidth control
                        if (selectedDmaBandwidth == DMA_LOW_BANDWIDTH) {
                            // Normalize and map MIDI value to correct frequency
                            float normalizedValue = valueByte / 127.0f;
                            int frequencyValue = LOW_BANDWIDTH_LOWER_BOUND + normalizedValue * (LOW_BANDWIDTH_UPPER_BOUND - LOW_BANDWIDTH_LOWER_BOUND);
                            // Update value in interface
                            dmaLowBandwidthValueLabel->setText(QString("%1Hz").arg(round(frequencyValue)));

                        }
                        else if (selectedDmaBandwidth == DMA_HIGH_BANDWIDTH) {
                            // Normalize and map MIDI value to correct frequency
                            float normalizedValue = valueByte / 127.0f;
                            int frequencyValue = HIGH_BANDWIDTH_LOWER_BOUND + normalizedValue * (HIGH_BANDWIDTH_UPPER_BOUND - HIGH_BANDWIDTH_LOWER_BOUND);
                            // Update value in interface
                            dmaHighBandwidthValueLabel->setText(QString("%1Hz").arg(round(frequencyValue)));
                        }

                        QRegularExpression bandwidthRegex(R"((\d+)(?=Hz))");
                        QRegularExpressionMatch lowerMatch = bandwidthRegex.match(dmaLowBandwidthValueLabel->text());
                        QRegularExpressionMatch higherMatch = bandwidthRegex.match(dmaHighBandwidthValueLabel->text());
                        float lowerBandwidth = lowerMatch.captured(1).toFloat();
                        float higherBandwidth = higherMatch.captured(1).toFloat();
                        QRegularExpression gainRegex(R"((-?\d+)(?=dB))");
                        QRegularExpressionMatch highGainMatch = gainRegex.match(dmaHighValueLabel->text());
                        QRegularExpressionMatch midGainMatch = gainRegex.match(dmaMidValueLabel->text());
                        QRegularExpressionMatch lowGainMatch = gainRegex.match(dmaLowValueLabel->text());
                        int highGain = highGainMatch.captured(1).toInt();
                        int midGain = midGainMatch.captured(1).toInt();
                        int lowGain = lowGainMatch.captured(1).toInt();

                        // Calculate filter coefficients
                        ShelvingCoefficients lowShelfFilterCoefficients = calculateLowShelfFilter(lowerBandwidth, lowGain);
                        ShelvingCoefficients lowBandShelfFilterCoefficients = calculateLowShelfFilter(lowerBandwidth, -midGain);
                        ShelvingCoefficients highBandShelfFilterCoefficients = calculateHighShelfFilter(higherBandwidth, -midGain);
                        ShelvingCoefficients highShelftFilterCoefficients = calculateHighShelfFilter(higherBandwidth, highGain);

                        // Write coefficients to AXI
                        writeHighShelfFilterParameters(highShelftFilterCoefficients, 2, 3);
                        writeBandShelfFilterParameters(highBandShelfFilterCoefficients, lowBandShelfFilterCoefficients, 2, 3);
                        writeLowShelfFilterParameters(lowShelfFilterCoefficients, 2, 3);

                        // Write gain to AXI
                        float convertedMidGain = pow(10, midGain / 20.0f);
                        writeBandShelfGain(convertedMidGain, 2, 3);
                        break;
                    }
                    case 67: { // High Shelf filter control
                        // Normalize and map gain to dB value
                        float gain = 0;
                        if (valueByte >= 64) {
                            // Map values above or equal to 64 to the range [0, 6]
                            gain = 0 + ((valueByte - 64) / float(127 - 64)) * (6 - 0);
                        } else {
                            // Map values below 64 to the range [-26, 0]
                            gain = -26 + ((valueByte - 0) / float(64 - 0)) * (0 - (-26));
                        }

                        // Get higher filter bandwidth value
                        QRegularExpression regex(R"((\d+)(?=Hz))");
                        QRegularExpressionMatch match = regex.match(dmaHighBandwidthValueLabel->text());
                        float bandwidth = match.captured(1).toInt();

                        // Calculate filter coefficients
                        ShelvingCoefficients coefficients = calculateHighShelfFilter(bandwidth, gain);

                        // Write coefficients to AXI
                        writeHighShelfFilterParameters(coefficients, 2, 3);

                        // Update value in interface
                        dmaHighValueLabel->setText(QString("%1dB").arg(round(gain)));
                        break;
                    }
                    case 68: { // Band Shelf filter control
                        float gain = 0;
                        if (valueByte >= 64) {
                            // Map values above or equal to 64 to the range [0, 6]
                            gain = 0 + ((valueByte - 64) / float(127 - 64)) * (6 - 0);
                        } else {
                            // Map values below 64 to the range [-26, 0]
                            gain = -26 + ((valueByte - 0) / float(64 - 0)) * (0 - (-26));
                        }

                        // Get lower and higher bandwidth value
                        QRegularExpression regex(R"((\d+)(?=Hz))");
                        QRegularExpressionMatch lowerMatch = regex.match(dmaLowBandwidthValueLabel->text());
                        QRegularExpressionMatch higherMatch = regex.match(dmaHighBandwidthValueLabel->text());
                        float lowerBandwidth = lowerMatch.captured(1).toInt();
                        float higherBandwidth = higherMatch.captured(1).toInt();

                        // Calculate filter coefficients
                        ShelvingCoefficients lowFilterCoefficients = calculateLowShelfFilter(lowerBandwidth, -gain);
                        ShelvingCoefficients highFilterCoefficients = calculateHighShelfFilter(higherBandwidth, -gain);

                        // Get previous gain value
                        QRegularExpression gainRegex(R"((\d+)(?=dB))");
                        QRegularExpressionMatch gainMatch = gainRegex.match(dmaMidValueLabel->text());
                        float previousGain = pow(10, gainMatch.captured(1).toInt() / 20.0f);
                        float newGain = pow(10, gain / 20.0f);

                        if (newGain > previousGain){
                            // Write coefficients to AXI
                            writeBandShelfFilterParameters(highFilterCoefficients, lowFilterCoefficients, 2, 3);
                            // Write gain to AXI
                            writeBandShelfGain(newGain, 2, 3);
                        } else {
                            // Write gain to AXI
                            writeBandShelfGain(newGain, 2, 3);
                            // Write coefficients to AXI
                            writeBandShelfFilterParameters(highFilterCoefficients, lowFilterCoefficients, 2, 3);
                        }

                        // Update value in interface
                        dmaMidValueLabel->setText(QString("%1dB").arg(round(gain)));
                        break;
                    }
                    case 69: { // Low Shelf filter control
                        float gain = 0;
                        if (valueByte >= 64) {
                            // Map values above or equal to 64 to the range [0, 6]
                            gain = 0 + ((valueByte - 64) / float(127 - 64)) * (6 - 0);
                        } else {
                            // Map values below 64 to the range [-26, 0]
                            gain = -26 + ((valueByte - 0) / float(64 - 0)) * (0 - (-26));
                        }

                        // Get lower filter bandwidth value
                        QRegularExpression regex(R"((\d+)(?=Hz))");
                        QRegularExpressionMatch match = regex.match(dmaLowBandwidthValueLabel->text());
                        float bandwidth = match.captured(1).toInt();

                        // Calculate filter coefficients
                        ShelvingCoefficients coefficients = calculateLowShelfFilter(bandwidth, gain);

                        // Write coefficients to AXI
                        writeLowShelfFilterParameters(coefficients, 2, 3);

                        // Update value in interface
                        dmaLowValueLabel->setText(QString("%1dB").arg(round(gain)));
                        break;
                    }
                    case 71: { // Volume control
                        float volumeValue = valueByte / 127.0f;

                        auto fixedVolume = make_fixed<8, 23>{volumeValue};
                        writeToAxi(0x174, fixedVolume.data());
                        // Write channel adress (dma left)
                        writeToAxi(0x170,2);
                        // Set strobe
                        writeToAxi(0x178,1);
                        // Write channel adress (dma right)
                        writeToAxi(0x170,3);
                        // Clear strobe
                        writeToAxi(0x178,0);

                        // Update value in interface
                        dmaVolumeValueLabel->setText(QString("%1%").arg(round(volumeValue*100)));
                        break;
                    }
                    default: {
                        break;
                    }
                }
            }
            break;
            case 144: { // Control for effects on analog signal
                switch(controllerByte) {
                    case 41: { // Enable saturation modification
                        selectedAudioEffect = ANALOG_SATURATION;
                        analogSaturationValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");
                        analogEchoValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        analogRingModulationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaSaturationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaEchoValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaRingModulationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        break;
                    }
                    case 42: { // Enable echo modification
                        selectedAudioEffect = ANALOG_ECHO;
                        analogSaturationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        analogEchoValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");
                        analogRingModulationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaSaturationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaEchoValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaRingModulationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        break;
                    }
                    case 43: { // Enable ring modulation modification
                        selectedAudioEffect = ANALOG_RING_MODULATION;
                        analogSaturationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        analogEchoValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        analogRingModulationValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");
                        dmaSaturationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaEchoValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaRingModulationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        break;
                    }
                    case 49: { // Toggle bandwidth selection
                        if (valueByte){
                            if (selectedAnalogBandwidth == ANALOG_LOW_BANDWIDTH){
                                selectedAnalogBandwidth = ANALOG_HIGH_BANDWIDTH;
                                analogLowBandwidthValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                                analogHighBandwidthValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");
                            }
                            else {
                                selectedAnalogBandwidth = ANALOG_LOW_BANDWIDTH;
                                analogLowBandwidthValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");
                                analogHighBandwidthValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                            }
                        }
                        break;
                    }
                    default: {
                        break;
                    }
                }
            }
            break;
            case 145: { // Control for effects on DMA signal
                switch(controllerByte) {
                    case 41: { // Enable saturation modification
                        selectedAudioEffect = DMA_SATURATION;
                        analogSaturationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        analogEchoValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        analogRingModulationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaSaturationValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");
                        dmaEchoValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaRingModulationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        break;
                    }
                    case 42: { // Enable echo modification
                        selectedAudioEffect = DMA_ECHO;
                        analogSaturationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        analogEchoValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        analogRingModulationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaSaturationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaEchoValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");
                        dmaRingModulationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        break;
                    }
                    case 43: { // Enable ring modulation modification
                        selectedAudioEffect = DMA_RING_MODULATION;
                        analogSaturationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        analogEchoValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        analogRingModulationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaSaturationValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaEchoValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                        dmaRingModulationValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");
                        break;
                    }
                    case 49: { // Toggle bandwidth selection
                        if (valueByte){
                            if (selectedDmaBandwidth == DMA_LOW_BANDWIDTH){
                                selectedDmaBandwidth = DMA_HIGH_BANDWIDTH;
                                dmaLowBandwidthValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                                dmaHighBandwidthValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");

                            }
                            else {
                                selectedDmaBandwidth = DMA_LOW_BANDWIDTH;
                                dmaLowBandwidthValueLabel->setStyleSheet("color: red; font-size: 14px; font-weight: bold;");
                                dmaHighBandwidthValueLabel->setStyleSheet("color: black; font-size: 14px; font-weight: bold;");
                            }
                        }
                        break;
                    }
                    default: {
                        break;
                    }
                }
            }
            break;
            case 180: { // Control for selected effect value
                if (controllerByte == 81) {
                    float volumeValue = valueByte / 127.0f;

                    // Write value to AXI
                    auto fixedVolume = make_fixed<8, 23>{volumeValue};
                    writeToAxi(0x16C, fixedVolume.data());

                    // Update value in interface
                    masterVolumeValueLabel->setText(QString("%1%").arg(round(volumeValue*100)));
                }
                else if (controllerByte == 83){
                    switch (selectedAudioEffect) {
                        case ANALOG_SATURATION: {
                            // Normalize and map MIDI value to correct value
                            float normalizedValue = valueByte / 127.0f;
                            int saturationValue = SATURATION_LOWER_BOUND + normalizedValue * (SATURATION_UPPER_BOUND - SATURATION_LOWER_BOUND);

                            // Write value to AXI
                            writeSaturationValue(saturationValue, 0, 1);

                            // Update value in interface
                            analogSaturationValueLabel->setText(QString("%1").arg(round(saturationValue)));
                            break;
                        }
                        case ANALOG_ECHO: {
                            // Normalize and map MIDI value to correct value
                            float normalizedValue = valueByte / 127.0f;
                            double echoValue = ECHO_LOWER_BOUND + normalizedValue * (ECHO_UPPER_BOUND - ECHO_LOWER_BOUND);

                            // Write value to AXI
                            writeEchoValue(echoValue, 0, 1);

                            // Update value in interface
                            analogEchoValueLabel->setText(QString("%1").arg(round(echoValue*100)/100));
                            break;
                        }
                        case ANALOG_RING_MODULATION: {
                            // Normalize and map MIDI value to correct value
                            float normalizedValue = valueByte / 127.0f;
                            int ringModulationValue = RING_MODULATION_LOWER_BOUND + normalizedValue * (RING_MODULATION_UPPER_BOUND - RING_MODULATION_LOWER_BOUND);

                            // Write value to AXI
                            if (ringModulationValue >= 100){
                                // Write ON status to AXI
                                writeToAxi(0x15C, 1);
                                // Write phase value to AXI
                                writeToAxi(0x160, ringModulationValue);
                                // Update value in interface
                                analogRingModulationValueLabel->setText(QString("%1").arg(round(ringModulationValue)));
                            } else {
                                // Write OFF status to AXI
                                writeToAxi(0x15C, 0);
                                // Update value in interface
                                analogRingModulationValueLabel->setText(QString("OFF"));
                            }
                            break;
                        }
                        case DMA_SATURATION: {
                            // Normalize and map MIDI value to correct value
                            float normalizedValue = valueByte / 127.0f;
                            int saturationValue = SATURATION_LOWER_BOUND + normalizedValue * (SATURATION_UPPER_BOUND - SATURATION_LOWER_BOUND);

                            // Write value to AXI
                            writeSaturationValue(saturationValue, 2, 3);

                            // Update value in interface
                            dmaSaturationValueLabel->setText(QString("%1").arg(round(saturationValue)));
                            break;
                        }
                        case DMA_ECHO: {
                            // Normalize and map MIDI value to correct value
                            float normalizedValue = valueByte / 127.0f;
                            double echoValue = ECHO_LOWER_BOUND + normalizedValue * (ECHO_UPPER_BOUND - ECHO_LOWER_BOUND);

                            // Write value to AXI
                            writeEchoValue(echoValue, 2, 3);

                            // Update value in interface
                            dmaEchoValueLabel->setText(QString("%1").arg(round(echoValue*100)/100));
                            break;
                        }
                        case DMA_RING_MODULATION: {
                            // Normalize and map MIDI value to correct value
                            float normalizedValue = valueByte / 127.0f;
                            int ringModulationValue = RING_MODULATION_LOWER_BOUND + normalizedValue * (RING_MODULATION_UPPER_BOUND - RING_MODULATION_LOWER_BOUND);

                            // Write value to AXI
                            if (ringModulationValue >= 100){
                                // Write ON status to AXI
                                writeToAxi(0x164, 1);
                                // Write phase value to AXI
                                writeToAxi(0x168, ringModulationValue);
                                // Update value in interface
                                dmaRingModulationValueLabel->setText(QString("%1").arg(round(ringModulationValue)));
                            } else {
                                // Write OFF status to AXI
                                writeToAxi(0x164, 0);
                                // Update value in interface
                                dmaRingModulationValueLabel->setText(QString("OFF"));
                            }
                            break;
                        }
                        default: {
                            break;
                        }
                    }
                }
            }
            break;
            default: {
                break;
            }
        }
    }
}

int AudioEffectWidget::writeToAxi(off_t reg_offset, auto val) {
    // Open /dev/mem to map the physical address into user space
    int mem_fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (mem_fd == -1) {
        perror("Error opening /dev/mem");
        return EXIT_FAILURE;
    }
    // Map AXI memory to user space (using mmap)
    void* mapped_base = mmap(NULL, MMAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, mem_fd, AXI_BASE_ADDR);
    if (mapped_base == MAP_FAILED) {
        perror("Error mapping AXI memory");
        ::close(mem_fd);
        return EXIT_FAILURE;
    }
    // Write the value to the AXI memory address
    volatile uint32_t* reg_ptr = (volatile uint32_t *)((char *)mapped_base + reg_offset);
    *reg_ptr = val;

    // Clean up and close /dev/mem
    if (munmap(mapped_base, MMAP_SIZE) == -1) {
        perror("Error unmapping memory");
    }
    ::close(mem_fd);

    return EXIT_SUCCESS;
}

/**************************************** SHELVING FILTER HELPER METHODS ****************************************/

ShelvingCoefficients AudioEffectWidget::calculateHighShelfFilter(int bandwidth, int dBgain) {
    // Calculate parameters
    float c_1 = 0.382683f;
    float c_2 = 0.92388f;
    float gain = pow(10, dBgain / 20.0f);
    float V = pow(gain, 0.25)-1;
    float K = tan((24000-bandwidth)*M_PI/48000);

    // Calculate coefficients
    float a0_1 = K*K + 2*K*c_1 + 1;
    float a1_1 = -(2*K*K - 2)/a0_1;
    float a2_1 = (K*K - 2*K*c_1 + 1)/a0_1;
    float b0_1 = (K*K*(V*V + 2*V + 1) + 2*K*c_1*(V+1) + 1)/a0_1;
    float b1_1 = -(2*K*K*(V*V + 2*V + 1) -2)/a0_1;
    float b2_1 = (K*K*(V*V + 2*V + 1) - 2*K*c_1*(V+1) + 1)/a0_1;

    float a0_2 = K*K + 2*K*c_2 + 1;
    float a1_2 = -(2*K*K - 2)/a0_2;
    float a2_2 = (K*K - 2*K*c_2 + 1)/a0_2;
    float b0_2 = (K*K*(V*V + 2*V + 1) + 2*K*c_2*(V+1) + 1)/a0_2;
    float b1_2 = -(2*K*K*(V*V + 2*V + 1) -2)/a0_2;
    float b2_2 = (K*K*(V*V + 2*V + 1) - 2*K*c_2*(V+1) + 1)/a0_2;

    ShelvingCoefficients coefficients(a1_1, a2_1, b0_1, b1_1, b2_1, a1_2, a2_2, b0_2, b1_2, b2_2);
    return coefficients;

}

ShelvingCoefficients AudioEffectWidget::calculateLowShelfFilter(int bandwidth, int dBgain){
    // Calculate parameters
    float c_1 = 0.382683f;
    float c_2 = 0.92388f;
    float gain = pow(10, dBgain / 20.0f);
    float V = pow(gain, 0.25)-1;
    float K = tan(bandwidth*M_PI/48000);

    // Calculate coefficients
    float a0_1 = K*K + 2*K*c_1 + 1;
    float a1_1 = (2*K*K - 2)/a0_1;
    float a2_1 = (K*K - 2*K*c_1 + 1)/a0_1;
    float b0_1 = (K*K*(V*V + 2*V + 1) + 2*K*c_1*(V+1) + 1)/a0_1;
    float b1_1 = (2*K*K*(V*V + 2*V + 1) -2)/a0_1;
    float b2_1 = (K*K*(V*V + 2*V + 1) - 2*K*c_1*(V+1) + 1)/a0_1;

    float a0_2 = K*K + 2*K*c_2 + 1;
    float a1_2 = (2*K*K - 2)/a0_2;
    float a2_2 = (K*K - 2*K*c_2 + 1)/a0_2;
    float b0_2 = (K*K*(V*V + 2*V + 1) + 2*K*c_2*(V+1) + 1)/a0_2;
    float b1_2 = (2*K*K*(V*V + 2*V + 1) -2)/a0_2;
    float b2_2 = (K*K*(V*V + 2*V + 1) - 2*K*c_2*(V+1) + 1)/a0_2;

    ShelvingCoefficients coefficients(a1_1, a2_1, b0_1, b1_1, b2_1, a1_2, a2_2, b0_2, b1_2, b2_2);
    return coefficients;

}

void AudioEffectWidget::writeHighShelfFilterParameters(ShelvingCoefficients coefficients, int leftChannel, int rightChannel){
    // Write high shelft filter coefficients (filter 1)
    auto fixed_b0_1 = make_fixed<8, 23>{coefficients.b0_1};
    writeToAxi(0xB8, fixed_b0_1.data());
    auto fixed_b1_1 = make_fixed<8, 23>{coefficients.b1_1};
    writeToAxi(0xBC, fixed_b1_1.data());
    auto fixed_b2_1 = make_fixed<8, 23>{coefficients.b2_1};
    writeToAxi(0xC0, fixed_b2_1.data());
    auto fixed_a1_1 = make_fixed<8, 23>{coefficients.a1_1};
    writeToAxi(0xC4, fixed_a1_1.data());
    auto fixed_a2_1 = make_fixed<8, 23>{coefficients.a2_1};
    writeToAxi(0xC8, fixed_a2_1.data());
    // Write channel adress
    writeToAxi(0xCC,leftChannel);
    // Set strobe
    writeToAxi(0xD0,1);
    // Write channel adress
    writeToAxi(0xCC,rightChannel);
    // Clear strobe
    writeToAxi(0xD0,0);

    // Write high shelft filter coefficients (filter 2)
    auto fixed_b0_2 = make_fixed<8, 23>{coefficients.b0_2};
    writeToAxi(0xD4, fixed_b0_2.data());
    auto fixed_b1_2 = make_fixed<8, 23>{coefficients.b1_2};
    writeToAxi(0xD8, fixed_b1_2.data());
    auto fixed_b2_2 = make_fixed<8, 23>{coefficients.b2_2};
    writeToAxi(0xDC, fixed_b2_2.data());
    auto fixed_a1_2 = make_fixed<8, 23>{coefficients.a1_2};
    writeToAxi(0xE0, fixed_a1_2.data());
    auto fixed_a2_2 = make_fixed<8, 23>{coefficients.a2_2};
    writeToAxi(0xE4, fixed_a2_2.data());
    // Write channel adress
    writeToAxi(0xE8,leftChannel);
    // Set strobe
    writeToAxi(0xEC,1);
    // Write channel adress
    writeToAxi(0xE8,rightChannel);
    // Clear strobe
    writeToAxi(0xEC,0);
}

void AudioEffectWidget::writeBandShelfFilterParameters(ShelvingCoefficients highFilterCoefficients, ShelvingCoefficients lowFilterCoefficients, int leftChannel, int rightChannel){
    // Write high shelft filter coefficients (filter 1)
    auto fixed_high_b0_1 = make_fixed<8, 23>{highFilterCoefficients.b0_1};
    writeToAxi(0x48, fixed_high_b0_1.data());
    auto fixed_high_b1_1 = make_fixed<8, 23>{highFilterCoefficients.b1_1};
    writeToAxi(0x4C, fixed_high_b1_1.data());
    auto fixed_high_b2_1 = make_fixed<8, 23>{highFilterCoefficients.b2_1};
    writeToAxi(0x50, fixed_high_b2_1.data());
    auto fixed_high_a1_1 = make_fixed<8, 23>{highFilterCoefficients.a1_1};
    writeToAxi(0x54, fixed_high_a1_1.data());
    auto fixed_high_a2_1 = make_fixed<8, 23>{highFilterCoefficients.a2_1};
    writeToAxi(0x58, fixed_high_a2_1.data());
    // Write channel adress
    writeToAxi(0x5C,leftChannel);
    // Set strobe
    writeToAxi(0x60,1);
    // Write channel adress
    writeToAxi(0x5C,rightChannel);
    // Clear strobe
    writeToAxi(0x60,0);

    // Write high shelft filter coefficients (filter 2)
    auto fixed_high_b0_2 = make_fixed<8, 23>{highFilterCoefficients.b0_2};
    writeToAxi(0x64, fixed_high_b0_2.data());
    auto fixed_high_b1_2 = make_fixed<8, 23>{highFilterCoefficients.b1_2};
    writeToAxi(0x68, fixed_high_b1_2.data());
    auto fixed_high_b2_2 = make_fixed<8, 23>{highFilterCoefficients.b2_2};
    writeToAxi(0x6C, fixed_high_b2_2.data());
    auto fixed_high_a1_2 = make_fixed<8, 23>{highFilterCoefficients.a1_2};
    writeToAxi(0x70, fixed_high_a1_2.data());
    auto fixed_high_a2_2 = make_fixed<8, 23>{highFilterCoefficients.a2_2};
    writeToAxi(0x74, fixed_high_a2_2.data());
    // Write channel adress
    writeToAxi(0x78,leftChannel);
    // Set strobe
    writeToAxi(0x7C,1);
    // Write channel adress
    writeToAxi(0x78,rightChannel);
    // Clear strobe
    writeToAxi(0x7C,0);

    // Write low shelft filter coefficients (filter 1)
    auto fixed_low_b0_1 = make_fixed<8, 23>{lowFilterCoefficients.b0_1};
    writeToAxi(0x10, fixed_low_b0_1.data());
    auto fixed_low_b1_1 = make_fixed<8, 23>{lowFilterCoefficients.b1_1};
    writeToAxi(0x14, fixed_low_b1_1.data());
    auto fixed_low_b2_1 = make_fixed<8, 23>{lowFilterCoefficients.b2_1};
    writeToAxi(0x18, fixed_low_b2_1.data());
    auto fixed_low_a1_1 = make_fixed<8, 23>{lowFilterCoefficients.a1_1};
    writeToAxi(0x1C, fixed_low_a1_1.data());
    auto fixed_low_a2_1 = make_fixed<8, 23>{lowFilterCoefficients.a2_1};
    writeToAxi(0x20, fixed_low_a2_1.data());
    // Write channel adress
    writeToAxi(0x24,leftChannel);
    // Set strobe
    writeToAxi(0x28,1);
    // Write channel adress
    writeToAxi(0x24,rightChannel);
    // Clear strobe
    writeToAxi(0x28,0);

    // Write low shelft filter coefficients (filter 2)
    auto fixed_low_b0_2 = make_fixed<8, 23>{lowFilterCoefficients.b0_2};
    writeToAxi(0x2C, fixed_low_b0_2.data());
    auto fixed_low_b1_2 = make_fixed<8, 23>{lowFilterCoefficients.b1_2};
    writeToAxi(0x30, fixed_low_b1_2.data());
    auto fixed_low_b2_2 = make_fixed<8, 23>{lowFilterCoefficients.b2_2};
    writeToAxi(0x34, fixed_low_b2_2.data());
    auto fixed_low_a1_2 = make_fixed<8, 23>{lowFilterCoefficients.a1_2};
    writeToAxi(0x38, fixed_low_a1_2.data());
    auto fixed_low_a2_2 = make_fixed<8, 23>{lowFilterCoefficients.a2_2};
    writeToAxi(0x3C, fixed_low_a2_2.data());
    // Write channel adress
    writeToAxi(0x40,leftChannel);
    // Set strobe
    writeToAxi(0x44,1);
    // Write channel adress
    writeToAxi(0x40,rightChannel);
    // Clear strobe
    writeToAxi(0x44,0);
}

void AudioEffectWidget::writeBandShelfGain(float gain, int leftChannel, int rightChannel){
    auto fixedGain = make_fixed<8, 23>{gain};
    writeToAxi(0x04, fixedGain.data());
    // Write channel adress
    writeToAxi(0x08,leftChannel);
    // Set strobe
    writeToAxi(0x0C,1);
    // Write channel adress
    writeToAxi(0x08,rightChannel);
    // Clear strobe
    writeToAxi(0x0C,0);
}

void AudioEffectWidget::writeLowShelfFilterParameters(ShelvingCoefficients coefficients, int leftChannel, int rightChannel){
    // Write low shelft filter coefficients (filter 1)
    auto fixed_b0_1 = make_fixed<8, 23>{coefficients.b0_1};
    writeToAxi(0x80, fixed_b0_1.data());
    auto fixed_b1_1 = make_fixed<8, 23>{coefficients.b1_1};
    writeToAxi(0x84, fixed_b1_1.data());
    auto fixed_b2_1 = make_fixed<8, 23>{coefficients.b2_1};
    writeToAxi(0x88, fixed_b2_1.data());
    auto fixed_a1_1 = make_fixed<8, 23>{coefficients.a1_1};
    writeToAxi(0x8C, fixed_a1_1.data());
    auto fixed_a2_1 = make_fixed<8, 23>{coefficients.a2_1};
    writeToAxi(0x90, fixed_a2_1.data());
    // Write channel adress
    writeToAxi(0x94,leftChannel);
    // Set strobe
    writeToAxi(0x98,1);
    // Write channel adress
    writeToAxi(0x94,rightChannel);
    // Clear strobe
    writeToAxi(0x98,0);

    // Write low shelft filter coefficients (filter 2)
    auto fixed_b0_2 = make_fixed<8, 23>{coefficients.b0_2};
    writeToAxi(0x9C, fixed_b0_2.data());
    auto fixed_b1_2 = make_fixed<8, 23>{coefficients.b1_2};
    writeToAxi(0xA0, fixed_b1_2.data());
    auto fixed_b2_2 = make_fixed<8, 23>{coefficients.b2_2};
    writeToAxi(0xA4, fixed_b2_2.data());
    auto fixed_a1_2 = make_fixed<8, 23>{coefficients.a1_2};
    writeToAxi(0xA8, fixed_a1_2.data());
    auto fixed_a2_2 = make_fixed<8, 23>{coefficients.a2_2};
    writeToAxi(0xAC, fixed_a2_2.data());
    // Write channel adress
    writeToAxi(0xB0,leftChannel);
    // Set strobe
    writeToAxi(0xB4,1);
    // Write channel adress
    writeToAxi(0xB0,rightChannel);
    // Clear strobe
    writeToAxi(0xB4,0);

}

/**************************************** HIGH - AND LOWPASS FILTER HELPER METHODS ****************************************/

void AudioEffectWidget::handleAnalogHighpassFilterProcess() {
    QString output = analogHighpassFilterProcess->readAllStandardOutput();
    QRegularExpression regex(R"(\[\[\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*\]\s*\[\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*\]\])");
    QRegularExpressionMatch match = regex.match(output);
    if (match.hasMatch()) {
        float first_b0 = match.captured(1).toFloat();
        float first_b1 = match.captured(2).toFloat();
        float first_b2 = match.captured(3).toFloat();
        float first_a0 = match.captured(4).toFloat();
        float first_a1 = match.captured(5).toFloat();
        float first_a2 = match.captured(6).toFloat();

        float second_b0 = match.captured(7).toFloat();
        float second_b1 = match.captured(8).toFloat();
        float second_b2 = match.captured(9).toFloat();
        float second_a0 = match.captured(10).toFloat();
        float second_a1 = match.captured(11).toFloat();
        float second_a2 = match.captured(12).toFloat();

        // Write high pass coefficients (filter 1)
        auto fixed_b0_1 = make_fixed<8, 23>{first_b0/first_a0};
        writeToAxi(0x10C, fixed_b0_1.data());
        auto fixed_b1_1 = make_fixed<8, 23>{first_b1/first_a0};
        writeToAxi(0x110, fixed_b1_1.data());
        auto fixed_b2_1 = make_fixed<8, 23>{first_b2/first_a0};
        writeToAxi(0x114, fixed_b2_1.data());
        auto fixed_a1_1 = make_fixed<8, 23>{first_a1/first_a0};
        writeToAxi(0x118, fixed_a1_1.data());
        auto fixed_a2_1 = make_fixed<8, 23>{first_a2/first_a0};
        writeToAxi(0x11C, fixed_a2_1.data());
        // Write channel adress (analog left)
        writeToAxi(0x120,0);
        // Set strobe
        writeToAxi(0x124,1);
        // Write channel adress (analog right)
        writeToAxi(0x120,1);
        // Clear strobe
        writeToAxi(0x124,0);

        // Write high pass coefficients (filter 2)
        auto fixed_b0_2 = make_fixed<8, 23>{second_b0/second_a0};
        writeToAxi(0x128, fixed_b0_2.data());
        auto fixed_b1_2 = make_fixed<8, 23>{second_b1/second_a0};
        writeToAxi(0x12C, fixed_b1_2.data());
        auto fixed_b2_2 = make_fixed<8, 23>{second_b2/second_a0};
        writeToAxi(0x130, fixed_b2_2.data());
        auto fixed_a1_2 = make_fixed<8, 23>{second_a1/second_a0};
        writeToAxi(0x134, fixed_a1_2.data());
        auto fixed_a2_2 = make_fixed<8, 23>{second_a2/second_a0};
        writeToAxi(0x138, fixed_a2_2.data());
        // Write channel adress (analog left)
        writeToAxi(0x13C,0);
        // Set strobe
        writeToAxi(0x140,1);
        // Write channel adress (analog right)
        writeToAxi(0x13C,1);
        // Clear strobe
        writeToAxi(0x140,0);
    }
    else {
        std::cout << "No match found!" << std::endl;
    }
}

void AudioEffectWidget::handleAnalogLowpassFilterProcess() {
    QString output = analogLowpassFilterProcess->readAllStandardOutput();
    QRegularExpression regex(R"(\[\[\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*\]\])");
    QRegularExpressionMatch match = regex.match(output);
    if (match.hasMatch()) {
        float b0 = match.captured(1).toFloat();
        float b1 = match.captured(2).toFloat();
        float b2 = match.captured(3).toFloat();
        float a0 = match.captured(4).toFloat();
        float a1 = match.captured(5).toFloat();
        float a2 = match.captured(6).toFloat();

        // Write low pass coefficients
        auto fixed_b0 = make_fixed<8, 23>{b0/a0};
        writeToAxi(0xF0, fixed_b0.data());
        auto fixed_b1 = make_fixed<8, 23>{b1/a0};
        writeToAxi(0xF4, fixed_b1.data());
        auto fixed_b2 = make_fixed<8, 23>{b2/a0};
        writeToAxi(0xF8, fixed_b2.data());
        auto fixed_a1 = make_fixed<8, 23>{a1/a0};
        writeToAxi(0xFC, fixed_a1.data());
        auto fixed_a2 = make_fixed<8, 23>{a2/a0};
        writeToAxi(0x100, fixed_a2.data());
        // Write channel adress (analog left)
        writeToAxi(0x104,0);
        // Set strobe
        writeToAxi(0x108,1);
        // Write channel adress (analog right)
        writeToAxi(0x104,1);
        // Clear strobe
        writeToAxi(0x108,0);
    }
    else {
        std::cout << "No match found!" << std::endl;
    }
}

void AudioEffectWidget::handleDmaHighpassFilterProcess() {
    QString output = dmaHighpassFilterProcess->readAllStandardOutput();
    QRegularExpression regex(R"(\[\[\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*\]\s*\[\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*\]\])");
    QRegularExpressionMatch match = regex.match(output);
    if (match.hasMatch()) {
        float first_b0 = match.captured(1).toFloat();
        float first_b1 = match.captured(2).toFloat();
        float first_b2 = match.captured(3).toFloat();
        float first_a0 = match.captured(4).toFloat();
        float first_a1 = match.captured(5).toFloat();
        float first_a2 = match.captured(6).toFloat();

        float second_b0 = match.captured(7).toFloat();
        float second_b1 = match.captured(8).toFloat();
        float second_b2 = match.captured(9).toFloat();
        float second_a0 = match.captured(10).toFloat();
        float second_a1 = match.captured(11).toFloat();
        float second_a2 = match.captured(12).toFloat();

        // Write high pass coefficients (filter 1)
        auto fixed_b0_1 = make_fixed<8, 23>{first_b0/first_a0};
        writeToAxi(0x10C, fixed_b0_1.data());
        auto fixed_b1_1 = make_fixed<8, 23>{first_b1/first_a0};
        writeToAxi(0x110, fixed_b1_1.data());
        auto fixed_b2_1 = make_fixed<8, 23>{first_b2/first_a0};
        writeToAxi(0x114, fixed_b2_1.data());
        auto fixed_a1_1 = make_fixed<8, 23>{first_a1/first_a0};
        writeToAxi(0x118, fixed_a1_1.data());
        auto fixed_a2_1 = make_fixed<8, 23>{first_a2/first_a0};
        writeToAxi(0x11C, fixed_a2_1.data());
        // Write channel adress (dma left)
        writeToAxi(0x120,2);
        // Set strobe
        writeToAxi(0x124,1);
        // Write channel adress (dma right)
        writeToAxi(0x120,3);
        // Clear strobe
        writeToAxi(0x124,0);

        // Write high pass coefficients (filter 2)
        auto fixed_b0_2 = make_fixed<8, 23>{second_b0/second_a0};
        writeToAxi(0x128, fixed_b0_2.data());
        auto fixed_b1_2 = make_fixed<8, 23>{second_b1/second_a0};
        writeToAxi(0x12C, fixed_b1_2.data());
        auto fixed_b2_2 = make_fixed<8, 23>{second_b2/second_a0};
        writeToAxi(0x130, fixed_b2_2.data());
        auto fixed_a1_2 = make_fixed<8, 23>{second_a1/second_a0};
        writeToAxi(0x134, fixed_a1_2.data());
        auto fixed_a2_2 = make_fixed<8, 23>{second_a2/second_a0};
        writeToAxi(0x138, fixed_a2_2.data());
        // Write channel adress (analog left)
        writeToAxi(0x13C,2);
        // Set strobe
        writeToAxi(0x140,1);
        // Write channel adress (analog right)
        writeToAxi(0x13C,3);
        // Clear strobe
        writeToAxi(0x140,0);
    }
    else {
        std::cout << "No match found!" << std::endl;
    }
}

void AudioEffectWidget::handleDmaLowpassFilterProcess() {
    QString output = dmaLowpassFilterProcess->readAllStandardOutput();
    QRegularExpression regex(R"(\[\[\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*(-?\d*\.?\d*(?:[eE][+-]?\d*)?)\s*\]\])");
    QRegularExpressionMatch match = regex.match(output);
    if (match.hasMatch()) {
        float b0 = match.captured(1).toFloat();
        float b1 = match.captured(2).toFloat();
        float b2 = match.captured(3).toFloat();
        float a0 = match.captured(4).toFloat();
        float a1 = match.captured(5).toFloat();
        float a2 = match.captured(6).toFloat();

        // Write low pass coefficients
        auto fixed_b0 = make_fixed<8, 23>{b0/a0};
        writeToAxi(0xF0, fixed_b0.data());
        auto fixed_b1 = make_fixed<8, 23>{b1/a0};
        writeToAxi(0xF4, fixed_b1.data());
        auto fixed_b2 = make_fixed<8, 23>{b2/a0};
        writeToAxi(0xF8, fixed_b2.data());
        auto fixed_a1 = make_fixed<8, 23>{a1/a0};
        writeToAxi(0xFC, fixed_a1.data());
        auto fixed_a2 = make_fixed<8, 23>{a2/a0};
        writeToAxi(0x100, fixed_a2.data());
        // Write channel adress (dma left)
        writeToAxi(0x104,2);
        // Set strobe
        writeToAxi(0x108,1);
        // Write channel adress (dma right)
        writeToAxi(0x104,3);
        // Clear strobe
        writeToAxi(0x108,0);

    }
    else {
        std::cout << "No match found!" << std::endl;
    }
}

void AudioEffectWidget::writeHighpassFilterParameters(ShelvingCoefficients coefficients, int leftChannel, int rightChannel){
   // Write high pass coefficients (filter 1)
    auto fixed_b0_1 = make_fixed<8, 23>{coefficients.b0_1};
    writeToAxi(0x10C, fixed_b0_1.data());
    auto fixed_b1_1 = make_fixed<8, 23>{coefficients.b1_1};
    writeToAxi(0x110, fixed_b1_1.data());
    auto fixed_b2_1 = make_fixed<8, 23>{coefficients.b2_1};
    writeToAxi(0x114, fixed_b2_1.data());
    auto fixed_a1_1 = make_fixed<8, 23>{coefficients.a1_1};
    writeToAxi(0x118, fixed_a1_1.data());
    auto fixed_a2_1 = make_fixed<8, 23>{coefficients.a2_1};
    writeToAxi(0x11C, fixed_a2_1.data());
    // Write channel adress
    writeToAxi(0x120,leftChannel);
    // Set strobe
    writeToAxi(0x124,1);
    // Write channel adress
    writeToAxi(0x120,rightChannel);
    // Clear strobe
    writeToAxi(0x124,0);

    // Write high pass coefficients (filter 2)
    auto fixed_b0_2 = make_fixed<8, 23>{coefficients.b0_2};
    writeToAxi(0x128, fixed_b0_2.data());
    auto fixed_b1_2 = make_fixed<8, 23>{coefficients.b1_2};
    writeToAxi(0x12C, fixed_b1_2.data());
    auto fixed_b2_2 = make_fixed<8, 23>{coefficients.b2_2};
    writeToAxi(0x130, fixed_b2_2.data());
    auto fixed_a1_2 = make_fixed<8, 23>{coefficients.a1_2};
    writeToAxi(0x134, fixed_a1_2.data());
    auto fixed_a2_2 = make_fixed<8, 23>{coefficients.a2_2};
    writeToAxi(0x138, fixed_a2_2.data());
    // Write channel adress
    writeToAxi(0x13C,leftChannel);
    // Set strobe
    writeToAxi(0x140,1);
    // Write channel adress
    writeToAxi(0x13C,rightChannel);
    // Clear strobe
    writeToAxi(0x140,0);
}

void AudioEffectWidget::writeLowpassFilterParameters(ShelvingCoefficients coefficients, int leftChannel, int rightChannel){
    // Write low pass coefficients
    auto fixed_b0 = make_fixed<8, 23>{coefficients.b0_1};
    writeToAxi(0xF0, fixed_b0.data());
    auto fixed_b1 = make_fixed<8, 23>{coefficients.b1_1};
    writeToAxi(0xF4, fixed_b1.data());
    auto fixed_b2 = make_fixed<8, 23>{coefficients.b2_1};
    writeToAxi(0xF8, fixed_b2.data());
    auto fixed_a1 = make_fixed<8, 23>{coefficients.a1_1};
    writeToAxi(0xFC, fixed_a1.data());
    auto fixed_a2 = make_fixed<8, 23>{coefficients.a2_1};
    writeToAxi(0x100, fixed_a2.data());
    // Write channel adress
    writeToAxi(0x104,leftChannel);
    // Set strobe
    writeToAxi(0x108,1);
    // Write channel adress
    writeToAxi(0x104,rightChannel);
    // Clear strobe
    writeToAxi(0x108,0);
}

/**************************************** EFFECT HELPER METHODS ****************************************/

void AudioEffectWidget::writeEchoValue(double echoValue, int leftChannel, int rightChannel){
    auto fixedEcho = make_fixed<8, 23>{echoValue};
    writeToAxi(0x144, fixedEcho.data());
    // Write channel adress
    writeToAxi(0x148,leftChannel);
    // Set strobe
    writeToAxi(0x14C,1);
    // Write channel adress
    writeToAxi(0x148,rightChannel);
    // Clear strobe
    writeToAxi(0x14C,0);
}

void AudioEffectWidget::writeSaturationValue(int saturationValue, int leftChannel, int rightChannel){
    auto fixedSaturation = make_fixed<8, 23>{saturationValue};
    writeToAxi(0x150, fixedSaturation.data());
    // Write channel adress
    writeToAxi(0x154,leftChannel);
    // Set strobe
    writeToAxi(0x158,1);
    // Write channel adress
    writeToAxi(0x154,rightChannel);
    // Clear strobe
    writeToAxi(0x158,0);
}

/**************************************** LAYOUT HELPER METHODS ****************************************/

QLabel* AudioEffectWidget::createCustomValueLabel(const QString& defaultValue) {
    QLabel* label = new QLabel(defaultValue, this);
    label->setAlignment(Qt::AlignCenter);
    label->setStyleSheet("font-size: 14px; font-weight: bold;");
    return label;
}

QVBoxLayout* AudioEffectWidget::createLabelAndWidget(const QString& labelText, QWidget* widget, QWidget* parent)
{
    QVBoxLayout* layout = new QVBoxLayout;
    QLabel* label = new QLabel(labelText, parent);
    label->setAlignment(Qt::AlignCenter);
    layout->addWidget(label);
    layout->addWidget(widget);
    return layout;
}

QVBoxLayout* AudioEffectWidget::createSectionLayout(QLabel* high, QLabel* mid, QLabel* low, QLabel* highPass, QLabel* lowPass, QLabel* volume, QLabel* saturation, QLabel* echo, QLabel* ringMod, QLabel* highBandwidth, QLabel* lowBandwidth, const QString& sectionTitle, QWidget* parent)
{
    // Create Section Title
    QLabel* sectionLabel = new QLabel(sectionTitle, parent);
    sectionLabel->setAlignment(Qt::AlignCenter);
    sectionLabel->setStyleSheet("font-weight: bold; font-size: 16px; margin: 10px;");

    // Helper to create vertical label + value layout
    auto createVerticalLayout = [&](const QString& text, QLabel* value) {
        QVBoxLayout* layout = new QVBoxLayout;
        QLabel* label = new QLabel(text, parent);
        label->setAlignment(Qt::AlignCenter);
        label->setStyleSheet("font-size: 12px; color: gray;");
        layout->addWidget(label);
        layout->addWidget(value);
        layout->setSpacing(5);
        layout->setAlignment(Qt::AlignCenter);
        return layout;
    };

    // Top Layout: Dials and bandwidth
    QHBoxLayout* topLayout = new QHBoxLayout;
    topLayout->addLayout(createVerticalLayout("Low Shelf", low));
    topLayout->addLayout(createVerticalLayout("Band Shelf", mid));
    topLayout->addLayout(createVerticalLayout("High Shelf", high));
    topLayout->addLayout(createVerticalLayout("Low bandwidth", lowBandwidth));
    topLayout->addLayout(createVerticalLayout("High bandwidth", highBandwidth));

    topLayout->setSpacing(20);

    // Middle Layout: Filters and Volume
    QHBoxLayout* middleLayout = new QHBoxLayout;
    middleLayout->addLayout(createVerticalLayout("Low Pass", lowPass));
    middleLayout->addLayout(createVerticalLayout("High Pass", highPass));
    middleLayout->addLayout(createVerticalLayout("Volume", volume));
    middleLayout->setSpacing(20);

    // Bottom Layout: Effects
    QHBoxLayout* bottomLayout = new QHBoxLayout;
    bottomLayout->addLayout(createVerticalLayout("Saturation Effect", saturation));
    bottomLayout->addLayout(createVerticalLayout("Echo Effect", echo));
    bottomLayout->addLayout(createVerticalLayout("Ring Modulation Effect", ringMod));
    bottomLayout->setSpacing(20);

    // Combine all layouts into the section layout
    QVBoxLayout* sectionLayout = new QVBoxLayout;
    sectionLayout->addWidget(sectionLabel);  // Add Section Title
    sectionLayout->addLayout(topLayout);
    sectionLayout->addLayout(middleLayout);
    sectionLayout->addLayout(bottomLayout);
    sectionLayout->setSpacing(15);
    sectionLayout->setContentsMargins(20, 20, 20, 20);

    return sectionLayout;
}
