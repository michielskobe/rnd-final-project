#include "audioeffectwidget.h"

AudioEffectWidget::AudioEffectWidget(QWidget *parent)
    : QWidget(parent)
{
    // Initialize Analog Section Widgets
    analogHighDial = createCustomQDial(-26,6,false,true);
    analogMidDial = createCustomQDial(-26,6,false,true);
    analogLowDial = createCustomQDial(-26,6,false,true);
    analogHighpassDial = createCustomQDial(20,20000,false,true);
    analogLowpassDial = createCustomQDial(20,20000,false,true);

    analogVolumeSlider = createCustomQSlider(Qt::Vertical, 0, 1, QSlider::TicksRight);
    analogSaturationDial = createCustomQDial(1,50,false,true);
    analogEchoDial= createCustomQDial(0,1,false,true);
    analogRingMdulationDial= createCustomQDial(0,100,false,true);

    // Initialize DMA Section Widgets
    dmaHighDial = createCustomQDial(-26,6,false,true);
    dmaMidDial = createCustomQDial(-26,6,false,true);
    dmaLowDial = createCustomQDial(-26,6,false,true);
    dmaHighpassDial = createCustomQDial(20,20000,false,true);
    dmaLowpassDial = createCustomQDial(20,20000,false,true);

    dmaVolumeSlider = createCustomQSlider(Qt::Vertical, 0, 1, QSlider::TicksRight);
    dmaSaturationDial = createCustomQDial(1,50,false,true);
    dmaEchoDial= createCustomQDial(0,1,false,true);
    dmaRingMdulationDial= createCustomQDial(0,100,false,true);

    // Create Analog Section Layout
    QVBoxLayout* analogLayout = createSectionLayout(analogHighDial, analogMidDial, analogLowDial, analogHighpassDial, analogLowpassDial, analogVolumeSlider, analogSaturationDial, analogEchoDial, analogRingMdulationDial, "Analog Input Source", this, false);

    // Create DMA Section Layout (Mirrored)
    QVBoxLayout* dmaLayout = createSectionLayout(dmaHighDial, dmaMidDial, dmaLowDial, dmaHighpassDial, dmaLowpassDial, dmaVolumeSlider, dmaSaturationDial, dmaEchoDial, dmaRingMdulationDial, "DMA Input Source ", this, true);

    // Create a border between Analog and DMA using QFrame
    QFrame* separator = new QFrame(this);
    separator->setFrameShape(QFrame::VLine);
    separator->setFrameShadow(QFrame::Sunken);
    separator->setLineWidth(3);
    separator->setStyleSheet("background-color: #9e9e9e");

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

QDial* AudioEffectWidget::createCustomQDial(int rangeMin, int rangeMax, bool wrapping, bool visibleNotches){
    QDial* qDial = new QDial(this);
    qDial->setRange(rangeMin, rangeMax);
    qDial->setWrapping(wrapping);
    qDial->setNotchesVisible(visibleNotches);
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
