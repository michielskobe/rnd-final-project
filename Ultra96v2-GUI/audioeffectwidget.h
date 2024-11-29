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
    // Helper functions to simplify layout creation
    QVBoxLayout* createSectionLayout(QDial* high, QDial* mid, QDial* low, QDial* highPass, QDial* lowPass, QSlider* volume, QDial* saturation, QDial* echo, QDial* ringMod, const QString& sectionTitle, QWidget* parent, bool mirrored);
    QVBoxLayout* createLabelAndWidget(const QString& labelText, QWidget* widget, QWidget* parent);

    // Helper function to simplify QDial creation
    QDial* createCustomQDial(int rangeMin, int rangeMax, bool wrapping, bool visibleNotches);

    // Helper function to simplify QSlider creation
    QSlider* createCustomQSlider(Qt::Orientation orientation, int rangeMin, int rangeMax, QSlider::TickPosition tickPosition);

    // Analog Section Widgets
    QDial *analogHighDial;
    QDial *analogMidDial;
    QDial *analogLowDial;
    QDial *analogHighpassDial;
    QDial *analogLowpassDial;
    QSlider *analogVolumeSlider;
    QDial *analogSaturationDial;
    QDial *analogEchoDial;
    QDial *analogRingMdulationDial;

    // DMA Section Widgets
    QDial *dmaHighDial;
    QDial *dmaMidDial;
    QDial *dmaLowDial;
    QDial *dmaHighpassDial;
    QDial *dmaLowpassDial;
    QSlider *dmaVolumeSlider;
    QDial *dmaSaturationDial;
    QDial *dmaEchoDial;
    QDial *dmaRingMdulationDial;
};

#endif // AUDIOEFFECTWIDGET_H
