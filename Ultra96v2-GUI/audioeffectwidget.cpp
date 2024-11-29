#include "audioeffectwidget.h"

AudioEffectWidget::AudioEffectWidget(QWidget *parent)
    : QWidget(parent)
{
    // Initialize Analog Section Widgets
    analogHighDial = new QDial(this);
    analogMidDial = new QDial(this);
    analogLowDial = new QDial(this);
    analogHighpassDial = new QDial(this);
    analogLowpassDial = new QDial(this);
    analogVolumeSlider = new QSlider(Qt::Vertical, this);
    analogSaturationSlider = new QSlider(Qt::Vertical, this);
    analogEchoSlider = new QSlider(Qt::Vertical, this);
    analogRingMdulationSlider = new QSlider(Qt::Vertical, this);

    // Initialize DMA Section Widgets
    dmaHighDial = new QDial(this);
    dmaMidDial = new QDial(this);
    dmaLowDial = new QDial(this);
    dmaHighpassDial = new QDial(this);
    dmaLowpassDial = new QDial(this);
    dmaVolumeSlider = new QSlider(Qt::Vertical, this);
    dmaSaturationSlider = new QSlider(Qt::Vertical, this);
    dmaEchoSlider = new QSlider(Qt::Vertical, this);
    dmaRingMdulationSlider = new QSlider(Qt::Vertical, this);

    // Set reasonable ranges for Dials
    analogHighDial->setRange(0, 100);
    analogMidDial->setRange(0, 100);
    analogLowDial->setRange(0, 100);
    analogHighpassDial->setRange(0,100);
    analogLowpassDial->setRange(0,100);
    analogSaturationSlider->setRange(0,100);
    analogEchoSlider->setRange(0,100);
    analogRingMdulationSlider->setRange(0,100);
    analogVolumeSlider->setRange(0,100);
    dmaHighDial->setRange(0, 100);
    dmaMidDial->setRange(0, 100);
    dmaLowDial->setRange(0, 100);
    dmaHighpassDial->setRange(0,100);
    dmaLowpassDial->setRange(0,100);
    dmaSaturationSlider->setRange(0,100);
    dmaEchoSlider->setRange(0,100);
    dmaRingMdulationSlider->setRange(0,100);
    dmaVolumeSlider->setRange(0,100);

    // Set wrapping to false to prevent dials from rotating endlessly
    analogHighDial->setWrapping(false);
    analogMidDial->setWrapping(false);
    analogLowDial->setWrapping(false);
    analogHighpassDial->setWrapping(false);
    analogLowpassDial->setWrapping(false);
    dmaHighDial->setWrapping(false);
    dmaMidDial->setWrapping(false);
    dmaLowDial->setWrapping(false);
    dmaHighpassDial->setWrapping(false);
    dmaLowpassDial->setWrapping(false);

    // Set ranges for sliders (e.g., 0 to 100 for volume, saturation, etc.)
    analogVolumeSlider->setRange(0, 100);
    analogSaturationSlider->setRange(0, 100);
    analogEchoSlider->setRange(0, 100);
    analogRingMdulationSlider->setRange(0, 100);
    dmaVolumeSlider->setRange(0, 100);
    dmaSaturationSlider->setRange(0, 100);
    dmaEchoSlider->setRange(0, 100);
    dmaRingMdulationSlider->setRange(0, 100);

    // Set notches to true to indicate the range of values available
    analogHighDial->setNotchesVisible(true);
    analogMidDial->setNotchesVisible(true);
    analogLowDial->setNotchesVisible(true);
    analogHighpassDial->setNotchesVisible(true);
    analogLowpassDial->setNotchesVisible(true);
    analogSaturationSlider->setTickPosition(QSlider::TicksRight);
    analogEchoSlider->setTickPosition(QSlider::TicksRight);
    analogRingMdulationSlider->setTickPosition(QSlider::TicksRight);
    analogVolumeSlider->setTickPosition(QSlider::TicksRight);
    dmaHighDial->setNotchesVisible(true);
    dmaMidDial->setNotchesVisible(true);
    dmaLowDial->setNotchesVisible(true);
    dmaHighpassDial->setNotchesVisible(true);
    dmaLowpassDial->setNotchesVisible(true);
    dmaSaturationSlider->setTickPosition(QSlider::TicksRight);
    dmaEchoSlider->setTickPosition(QSlider::TicksRight);
    dmaRingMdulationSlider->setTickPosition(QSlider::TicksRight);
    dmaVolumeSlider->setTickPosition(QSlider::TicksRight);


    // Create Analog Section Layout
    QVBoxLayout* analogLayout = createSectionLayout(
        analogHighDial, analogMidDial, analogLowDial,
        analogHighpassDial, analogLowpassDial, analogVolumeSlider,
        analogSaturationSlider, analogEchoSlider, analogRingMdulationSlider, "Analog Input Source", this
        );
    analogLayout->setSpacing(10);
    analogLayout->setContentsMargins(10, 10, 10, 10);


    // Create DMA Section Layout (Mirrored)
    QVBoxLayout* dmaLayout = createMirroredSectionLayout(
        dmaHighDial, dmaMidDial, dmaLowDial,
        dmaHighpassDial, dmaLowpassDial, dmaVolumeSlider,
        dmaSaturationSlider, dmaEchoSlider, dmaRingMdulationSlider, "DMA Input Source ", this
        );
    dmaLayout->setSpacing(10);
    dmaLayout->setContentsMargins(10, 10, 10, 10);

    // Create a border between Analog and DMA using QFrame
    QFrame* separator = new QFrame(this);
    separator->setFrameShape(QFrame::VLine);           // Keep vertical line shape
    separator->setFrameShadow(QFrame::Sunken);        // Make the border sunken
    separator->setLineWidth(3);                       // Make the border thicker
    separator->setStyleSheet("background-color: #9e9e9e");  // Dark color for distinct separation

    // Combine Analog and DMA Sections into Main Horizontal Layout
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
    // Qt automatically handles memory management for child widgets.
}

QVBoxLayout* AudioEffectWidget::createSectionLayout(
    QDial* high, QDial* mid, QDial* low,
    QDial* highPass, QDial* lowPass,
    QSlider* volume, QSlider* saturation,
    QSlider* echo, QSlider* ringMod, const QString& sectionTitle, QWidget* parent)
{
    // Section Title Label (Centered)
    QLabel* sectionLabel = new QLabel(sectionTitle, parent);
    sectionLabel->setAlignment(Qt::AlignCenter);
    sectionLabel->setStyleSheet("font-weight: bold; font-size: 14px;");

    // Create a Layout for each widget, including labels centered
    QVBoxLayout* dialsLayout = new QVBoxLayout;
    QLabel* highLabel = new QLabel("High", parent);
    highLabel->setAlignment(Qt::AlignCenter);
    dialsLayout->addWidget(highLabel);
    dialsLayout->addWidget(high);

    QLabel* midLabel = new QLabel("Mid", parent);
    midLabel->setAlignment(Qt::AlignCenter);
    dialsLayout->addWidget(midLabel);
    dialsLayout->addWidget(mid);

    QLabel* lowLabel = new QLabel("Low", parent);
    lowLabel->setAlignment(Qt::AlignCenter);
    dialsLayout->addWidget(lowLabel);
    dialsLayout->addWidget(low);

    QVBoxLayout* filtersLayout = new QVBoxLayout;
    QLabel* highPassLabel = new QLabel("High Pass", parent);
    highPassLabel->setAlignment(Qt::AlignCenter);
    filtersLayout->addWidget(highPassLabel);
    filtersLayout->addWidget(highPass);

    QLabel* lowPassLabel = new QLabel("Low Pass", parent);
    lowPassLabel->setAlignment(Qt::AlignCenter);
    filtersLayout->addWidget(lowPassLabel);
    filtersLayout->addWidget(lowPass);

    QVBoxLayout* volumeLayout = new QVBoxLayout;
    QLabel* volumeLabel = new QLabel("Volume", parent);
    volumeLabel->setAlignment(Qt::AlignCenter);
    volumeLayout->addWidget(volumeLabel);
    volumeLayout->addWidget(volume);

    QHBoxLayout* topLayout = new QHBoxLayout;
    topLayout->addLayout(dialsLayout);
    topLayout->addLayout(filtersLayout);
    topLayout->addLayout(volumeLayout);

    // Bottom Layout for Sliders with centered labels
    QHBoxLayout* bottomLayout = new QHBoxLayout;

    // Saturation Slider
    QLabel* saturationLabel = new QLabel("Saturation", parent);
    saturationLabel->setAlignment(Qt::AlignCenter);
    bottomLayout->addWidget(saturationLabel);
    bottomLayout->addWidget(saturation);

    // Echo Slider
    QLabel* echoLabel = new QLabel("Echo", parent);
    echoLabel->setAlignment(Qt::AlignCenter);
    bottomLayout->addWidget(echoLabel);
    bottomLayout->addWidget(echo);

    // Ring Modulation Slider
    QLabel* ringModLabel = new QLabel("Ring Modulation", parent);
    ringModLabel->setAlignment(Qt::AlignCenter);
    bottomLayout->addWidget(ringModLabel);
    bottomLayout->addWidget(ringMod);

    // Combine Section Title and Top and Bottom Layouts
    QVBoxLayout* sectionLayout = new QVBoxLayout;
    sectionLayout->addWidget(sectionLabel);  // Add Section Title
    sectionLayout->addLayout(topLayout);
    sectionLayout->addLayout(bottomLayout);

    return sectionLayout;
}

// Mirrored Section Layout
QVBoxLayout* AudioEffectWidget::createMirroredSectionLayout(
    QDial* high, QDial* mid, QDial* low,
    QDial* highPass, QDial* lowPass,
    QSlider* volume, QSlider* saturation,
    QSlider* echo, QSlider* ringMod, const QString& sectionTitle, QWidget* parent)
{
    // Section Title Label (Centered)
    QLabel* sectionLabel = new QLabel(sectionTitle, parent);
    sectionLabel->setAlignment(Qt::AlignCenter);
    sectionLabel->setStyleSheet("font-weight: bold; font-size: 14px;");

    // Create a Layout for each widget, including labels centered
    QVBoxLayout* volumeLayout = new QVBoxLayout;
    QLabel* volumeLabel = new QLabel("Volume", parent);
    volumeLabel->setAlignment(Qt::AlignCenter);
    volumeLayout->addWidget(volumeLabel);
    volumeLayout->addWidget(volume);

    QVBoxLayout* filtersLayout = new QVBoxLayout;
    QLabel* highPassLabel = new QLabel("High Pass", parent);
    highPassLabel->setAlignment(Qt::AlignCenter);
    filtersLayout->addWidget(highPassLabel);
    filtersLayout->addWidget(highPass);

    QLabel* lowPassLabel = new QLabel("Low Pass", parent);
    lowPassLabel->setAlignment(Qt::AlignCenter);
    filtersLayout->addWidget(lowPassLabel);
    filtersLayout->addWidget(lowPass);

    QVBoxLayout* dialsLayout = new QVBoxLayout;
    QLabel* highLabel = new QLabel("High", parent);
    highLabel->setAlignment(Qt::AlignCenter);
    dialsLayout->addWidget(highLabel);
    dialsLayout->addWidget(high);

    QLabel* midLabel = new QLabel("Mid", parent);
    midLabel->setAlignment(Qt::AlignCenter);
    dialsLayout->addWidget(midLabel);
    dialsLayout->addWidget(mid);

    QLabel* lowLabel = new QLabel("Low", parent);
    lowLabel->setAlignment(Qt::AlignCenter);
    dialsLayout->addWidget(lowLabel);
    dialsLayout->addWidget(low);

    QHBoxLayout* topLayout = new QHBoxLayout;
    topLayout->addLayout(volumeLayout);
    topLayout->addLayout(filtersLayout);
    topLayout->addLayout(dialsLayout);

    // Bottom Layout for Sliders with centered labels
    QHBoxLayout* bottomLayout = new QHBoxLayout;

    // Saturation Slider
    QLabel* saturationLabel = new QLabel("Saturation", parent);
    saturationLabel->setAlignment(Qt::AlignCenter);
    bottomLayout->addWidget(saturationLabel);
    bottomLayout->addWidget(saturation);

    // Echo Slider
    QLabel* echoLabel = new QLabel("Echo", parent);
    echoLabel->setAlignment(Qt::AlignCenter);
    bottomLayout->addWidget(echoLabel);
    bottomLayout->addWidget(echo);

    // Ring Modulation Slider
    QLabel* ringModLabel = new QLabel("Ring Modulation", parent);
    ringModLabel->setAlignment(Qt::AlignCenter);
    bottomLayout->addWidget(ringModLabel);
    bottomLayout->addWidget(ringMod);

    // Combine Section Title and Top and Bottom Layouts
    QVBoxLayout* sectionLayout = new QVBoxLayout;
    sectionLayout->addWidget(sectionLabel);  // Add Section Title
    sectionLayout->addLayout(topLayout);
    sectionLayout->addLayout(bottomLayout);

    return sectionLayout;
}
