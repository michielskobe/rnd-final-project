#ifndef AUDIOEFFECTWIDGET_H
#define AUDIOEFFECTWIDGET_H

#include <QWidget>
#include <QDial>
#include <QSlider>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QLabel>
#include <QFrame>

class AudioEffectWidget : public QWidget
{
    Q_OBJECT

public:
    explicit AudioEffectWidget(QWidget *parent = nullptr);
    ~AudioEffectWidget();

private:
    // Helper function to simplify layout creation
    QVBoxLayout* createSectionLayout(QDial* high, QDial* mid, QDial* low,
                                     QDial* highPass, QDial* lowPass,
                                     QSlider* volume, QSlider* saturation,
                                     QSlider* echo, QSlider* ringMod, const QString& sectionTitle, QWidget* parent);

    // Helper function for mirrored layout creation
    QVBoxLayout* createMirroredSectionLayout(QDial* high, QDial* mid, QDial* low,
                                             QDial* highPass, QDial* lowPass,
                                             QSlider* volume, QSlider* saturation,
                                             QSlider* echo, QSlider* ringMod, const QString& sectionTitle, QWidget* parent);

    // Analog Section Widgets
    QDial *analogHighDial;
    QDial *analogMidDial;
    QDial *analogLowDial;
    QDial *analogHighpassDial;
    QDial *analogLowpassDial;
    QSlider *analogVolumeSlider;
    QSlider *analogSaturationSlider;
    QSlider *analogEchoSlider;
    QSlider *analogRingMdulationSlider;

    // DMA Section Widgets
    QDial *dmaHighDial;
    QDial *dmaMidDial;
    QDial *dmaLowDial;
    QDial *dmaHighpassDial;
    QDial *dmaLowpassDial;
    QSlider *dmaVolumeSlider;
    QSlider *dmaSaturationSlider;
    QSlider *dmaEchoSlider;
    QSlider *dmaRingMdulationSlider;
};

#endif // AUDIOEFFECTWIDGET_H
