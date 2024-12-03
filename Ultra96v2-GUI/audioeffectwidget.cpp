#include "audioeffectwidget.h"

AudioEffectWidget::AudioEffectWidget(QWidget *parent)
    : QWidget(parent), midiProcess(new QProcess(this)), analogHighpassFilterProcess(new QProcess(this)), analogLowpassFilterProcess(new QProcess(this)), dmaHighpassFilterProcess(new QProcess(this)), dmaLowpassFilterProcess(new QProcess(this))
{
    // Initialize Analog Section Widgets
    analogHighDial = createCustomQDial(-26,6,false,true, false);
    analogMidDial = createCustomQDial(-26,6,false,true, false);
    analogLowDial = createCustomQDial(-26,6,false,true, false);
    analogHighpassDial = createCustomQDial(20,20000,false,true, true);
    analogLowpassDial = createCustomQDial(20,20000,false,true, true);
    analogSaturationDial = createCustomQDial(1,50,false,true, false);
    analogEchoDial= createCustomQDial(0,1,false,true, false);
    analogRingMdulationDial= createCustomQDial(0,100,false,true, false);
    analogVolumeSlider = createCustomQSlider(Qt::Vertical, 0, 1, QSlider::TicksRight);

    // Initialize DMA Section Widgets
    dmaHighDial = createCustomQDial(-26,6,false,true, false);
    dmaMidDial = createCustomQDial(-26,6,false,true, false);
    dmaLowDial = createCustomQDial(-26,6,false,true, false);
    dmaHighpassDial = createCustomQDial(20,20000,false,true, false);
    dmaLowpassDial = createCustomQDial(20,20000,false,true, false);
    dmaSaturationDial = createCustomQDial(1,50,false,true, false);
    dmaEchoDial= createCustomQDial(0,1,false,true, false);
    dmaRingMdulationDial= createCustomQDial(0,100,false,true, false);
    dmaVolumeSlider = createCustomQSlider(Qt::Vertical, 0, 1, QSlider::TicksRight);

    // Connect the dials to the respective slots
    connect(analogHighpassDial, SIGNAL(valueChanged(int)), this, SLOT(onAnalogHighpassDialChanged(int)));   // TODO: remove later on
    connect(analogLowpassDial, SIGNAL(valueChanged(int)), this, SLOT(onAnalogLowpassDialChanged(int)));     // TODO: remove later on
    connect(dmaHighpassDial, SIGNAL(valueChanged(int)), this, SLOT(onDmaHighpassDialChanged(int)));         // TODO: remove later on
    connect(dmaLowpassDial, SIGNAL(valueChanged(int)), this, SLOT(onDmaLowpassDialChanged(int)));           // TODO: remove later on

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
    QVBoxLayout* analogLayout = createSectionLayout(analogHighDial, analogMidDial, analogLowDial, analogHighpassDial, analogLowpassDial, analogVolumeSlider, analogSaturationDial, analogEchoDial, analogRingMdulationDial, "Analog Input Source", this, false);

    // Create DMA Section Layout (Mirrored)
    QVBoxLayout* dmaLayout = createSectionLayout(dmaHighDial, dmaMidDial, dmaLowDial, dmaHighpassDial, dmaLowpassDial, dmaVolumeSlider, dmaSaturationDial, dmaEchoDial, dmaRingMdulationDial, "DMA Input Source ", this, true);

    // Create a separator between Analog and DMA
    QFrame* separator = new QFrame(this);
    separator->setFrameShape(QFrame::VLine);
    separator->setFrameShadow(QFrame::Sunken);
    separator->setLineWidth(3);
    separator->setStyleSheet("background-color: #9e9e9e");

    // Combine Analog and DMA sections into main layout
    QHBoxLayout* mainLayout = new QHBoxLayout(this);
    mainLayout->addLayout(analogLayout);
    mainLayout->addWidget(separator);
    mainLayout->addLayout(dmaLayout);
    mainLayout->setSpacing(20);
    mainLayout->setContentsMargins(10, 10, 10, 10);

    setLayout(mainLayout);
}

AudioEffectWidget::~AudioEffectWidget()
{
    midiProcess->terminate();
    analogHighpassFilterProcess->terminate();
    analogLowpassFilterProcess->terminate();
    dmaHighpassFilterProcess->terminate();
    dmaLowpassFilterProcess->terminate();
}

void AudioEffectWidget::onAnalogHighpassDialChanged(int frequency)          // TODO: remove later on
{
    QString input = "highpass 4 " + QString::number(frequency);
    analogHighpassFilterProcess->write(input.toUtf8() + '\n');
}

void AudioEffectWidget::onAnalogLowpassDialChanged(int frequency)           // TODO: remove later on
{
    QString input = "lowpass 2 " + QString::number(frequency);
    analogLowpassFilterProcess->write(input.toUtf8() + '\n');
}

void AudioEffectWidget::onDmaHighpassDialChanged(int frequency)             // TODO: remove later on
{
    QString input = "highpass 4 " + QString::number(frequency);
    dmaHighpassFilterProcess->write(input.toUtf8() + '\n');
}

void AudioEffectWidget::onDmaLowpassDialChanged(int frequency)              // TODO: remove later on
{
    QString input = "lowpass 2 " + QString::number(frequency);
    dmaLowpassFilterProcess->write(input.toUtf8() + '\n');
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
        int first_midi = match.captured(1).toInt();
        int second_midi = match.captured(2).toInt();
        int third_midi = match.captured(3).toInt();

        switch (second_midi) {
            case 48: {
                // analogHighDial
                std::cout << output.toStdString() << std::endl;                 // TODO: write high shelf parameter to axi
                break;
            }
            case 49: {
                // analogMidDial
                std::cout << output.toStdString() << std::endl;                 // TODO: write band shelf parameter to axi
                break;
            }
            case 50: {
                // analogLowDial
                std::cout << output.toStdString() << std::endl;                 // TODO: write low shelf parameter to axi
                break;
            }
            case 51: {
                // analogHighpassDial
                QString input = "highpass 4 " + QString::number(third_midi);    // TODO: check if third_midi is frequency?
                analogHighpassFilterProcess->write(input.toUtf8() + '\n');
                break;
            }
            case 52: {
                // analogLowpassDial
                QString input = "lowpass 2 " + QString::number(third_midi);     // TODO: check if third_midi is frequency?
                analogLowpassFilterProcess->write(input.toUtf8() + '\n');
                break;
            }
            case 53: {
                // analogVolumeSlider
                //writeToAxi(axi_addr, val);                                    // TODO: implement correct write function
                break;
            }
            case 54: {
                // analogSaturationDial
                //writeToAxi(axi_addr, val);                                    // TODO: implement correct write function
                break;
            }
            case 55: {
                // analogEchoDial
                //writeToAxi(axi_addr, val);                                    // TODO: implement correct write function
                break;
            }
            case 56: {
                // analogRingMdulationDial
                //writeToAxi(axi_addr, val);                                    // TODO: implement correct write function
                break;
            }
            case 57: {
                // dmaHighDial
                std::cout << output.toStdString() << std::endl;                 // TODO: write high shelf parameter to axi
                break;
            }
            case 58: {
                // dmaMidDial
                std::cout << output.toStdString() << std::endl;                 // TODO: write band shelf parameter to axi
                break;
            }
            case 59: {
                // dmaLowDial
                std::cout << output.toStdString() << std::endl;                 // TODO: write low shelf parameter to axi
                break;
            }
            case 60: {
                // dmaHighpassDial
                QString input = "highpass 4 " + QString::number(third_midi);    // TODO: check if third_midi is frequency?
                dmaHighpassFilterProcess->write(input.toUtf8() + '\n');
                break;
            }
            case 14: {
                // dmaLowpassDial
                QString input = "lowpass 2 " + QString::number(third_midi);     // TODO: check if third_midi is frequency?
                dmaLowpassFilterProcess->write(input.toUtf8() + '\n');
                break;
            }
            case 15: {
                // dmaVolumeSlider
                //writeToAxi(axi_addr, val);                                    // TODO: implement correct write function
                break;
            }
            case 16: {
                // dmaSaturationDial
                //writeToAxi(axi_addr, val);                                    // TODO: implement correct write function
                break;
            }
            case 17: {
                // dmaEchoDial
                //writeToAxi(axi_addr, val);                                    // TODO: implement correct write function
                break;
            }
            case 18: {
                // dmaRingMdulationDial
                //writeToAxi(axi_addr, val);                                    // TODO: implement correct write function
                break;
            }
            default: {
                break;
            }
        }
    }
}

void AudioEffectWidget::handleAnalogHighpassFilterProcess() {
    QString output = analogHighpassFilterProcess->readAllStandardOutput();
    std::cout << output.toStdString() << std::endl;
    //writeToAxi(axi_addr, val);                                                // TODO: implement correct write function
}

void AudioEffectWidget::handleAnalogLowpassFilterProcess() {
    QString output = analogLowpassFilterProcess->readAllStandardOutput();
    std::cout << output.toStdString() << std::endl;
    //writeToAxi(axi_addr, val);                                                // TODO: implement correct write function
}

void AudioEffectWidget::handleDmaHighpassFilterProcess() {
    QString output = dmaHighpassFilterProcess->readAllStandardOutput();
    std::cout << output.toStdString() << std::endl;
    //writeToAxi(axi_addr, val);                                                // TODO: implement correct write function
}

void AudioEffectWidget::handleDmaLowpassFilterProcess() {
    QString output = dmaLowpassFilterProcess->readAllStandardOutput();
    std::cout << output.toStdString() << std::endl;
    //writeToAxi(axi_addr, val);                                                // TODO: implement correct write function
}

int AudioEffectWidget::writeToAxi(volatile uint32_t *axi_addr, uint32_t val) {
    // Open /dev/mem to map the physical address into user space
    int mem_fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (mem_fd == -1) {
        perror("Error opening /dev/mem");
        return EXIT_FAILURE;
    }

    // Map AXI memory to user space (using mmap)
    void* axi_base_addr = mmap(NULL, MMAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, mem_fd, AXI_BASE_ADDR);
    if (axi_base_addr == MAP_FAILED) {
        perror("Error mapping AXI memory");
        ::close(mem_fd);
        return EXIT_FAILURE;
    }

    // Write the value to the AXI memory address
    *(volatile uint32_t *)axi_addr = val;

    // Optionally, verify the write by reading the value back
    uint32_t read_back = *(volatile uint32_t *)axi_addr;
    printf("AXI Write: Address=0x%p Value=0x%08x (Read Back=0x%08x)\n", axi_addr, val, read_back);

    // Clean up and close /dev/mem
    if (munmap(axi_base_addr, MMAP_SIZE) == -1) {
        perror("Error unmapping memory");
    }
    ::close(mem_fd);

    return EXIT_SUCCESS;
}


QDial* AudioEffectWidget::createCustomQDial(int rangeMin, int rangeMax, bool wrapping, bool visibleNotches, bool tracking){
    QDial* qDial = new QDial(this);
    qDial->setRange(rangeMin, rangeMax);
    qDial->setWrapping(wrapping);
    qDial->setNotchesVisible(visibleNotches);
    qDial->setTracking(tracking);
    return qDial;

}

QSlider* AudioEffectWidget::createCustomQSlider(Qt::Orientation orientation, int rangeMin, int rangeMax, QSlider::TickPosition tickPosition){
    QSlider* slider = new QSlider(orientation, this);
    slider->setRange(rangeMin, rangeMax);
    slider->setTickPosition(tickPosition);
    return slider;
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

QVBoxLayout* AudioEffectWidget::createSectionLayout(
    QDial* high, QDial* mid, QDial* low, QDial* highPass, QDial* lowPass,
    QSlider* volume, QDial* saturation, QDial* echo, QDial* ringMod,
    const QString& sectionTitle, QWidget* parent, bool mirrored)
{
    // Section Title Label (Centered)
    QLabel* sectionLabel = new QLabel(sectionTitle, parent);
    sectionLabel->setAlignment(Qt::AlignCenter);
    sectionLabel->setStyleSheet("font-weight: bold; font-size: 14px;");

    // Create layouts for each section
    QVBoxLayout* dialsLayout = new QVBoxLayout;
    dialsLayout->addLayout(createLabelAndWidget("High", high, parent));
    dialsLayout->addLayout(createLabelAndWidget("Mid", mid, parent));
    dialsLayout->addLayout(createLabelAndWidget("Low", low, parent));

    QVBoxLayout* filtersLayout = new QVBoxLayout;
    filtersLayout->addLayout(createLabelAndWidget("High Pass", highPass, parent));
    filtersLayout->addLayout(createLabelAndWidget("Low Pass", lowPass, parent));

    QVBoxLayout* volumeLayout = new QVBoxLayout;
    volumeLayout->addLayout(createLabelAndWidget("Volume", volume, parent));

    // Arrange top layout
    QHBoxLayout* topLayout = new QHBoxLayout;
    if (mirrored) {
        topLayout->addLayout(volumeLayout);
        topLayout->addLayout(filtersLayout);
        topLayout->addLayout(dialsLayout);
    } else {
        topLayout->addLayout(dialsLayout);
        topLayout->addLayout(filtersLayout);
        topLayout->addLayout(volumeLayout);
    }

    // Create bottom layout for sliders
    QHBoxLayout* bottomLayout = new QHBoxLayout;
    bottomLayout->addLayout(createLabelAndWidget("Saturation", saturation, parent));
    bottomLayout->addLayout(createLabelAndWidget("Echo", echo, parent));
    bottomLayout->addLayout(createLabelAndWidget("Ring Modulation", ringMod, parent));

    // Combine layouts into section layout
    QVBoxLayout* sectionLayout = new QVBoxLayout;
    sectionLayout->addWidget(sectionLabel);  // Add Section Title
    sectionLayout->addLayout(topLayout);
    sectionLayout->addLayout(bottomLayout);

    sectionLayout->setSpacing(10);
    sectionLayout->setContentsMargins(10, 10, 10, 10);

    return sectionLayout;
}
