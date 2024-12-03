#ifndef AUDIOEFFECTWIDGET_H
#define AUDIOEFFECTWIDGET_H

#include <QWidget>
#include <QDial>
#include <QSlider>
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

#define AXI_BASE_ADDR 0xA0040000
#define MMAP_SIZE 0x10000

class AudioEffectWidget : public QWidget
{
    Q_OBJECT

public:
    explicit AudioEffectWidget(QWidget *parent = nullptr);
    ~AudioEffectWidget();

private slots:
    void onAnalogHighpassDialChanged(int frequency);    // TODO: remove later on
    void onAnalogLowpassDialChanged(int frequency);     // TODO: remove later on
    void onDmaHighpassDialChanged(int frequency);       // TODO: remove later on
    void onDmaLowpassDialChanged(int frequency);        // TODO: remove later on
    void handleMidiProcessOutput();
    void handleAnalogHighpassFilterProcess();
    void handleAnalogLowpassFilterProcess();
    void handleDmaHighpassFilterProcess();
    void handleDmaLowpassFilterProcess();

private:
    int writeToAxi(volatile uint32_t *base_addr, uint32_t val);
    QProcess* startPythonProcess(QString pythonScript);

    // Helper functions to simplify layout creation
    QVBoxLayout* createSectionLayout(QDial* high, QDial* mid, QDial* low, QDial* highPass, QDial* lowPass, QSlider* volume, QDial* saturation, QDial* echo, QDial* ringMod, const QString& sectionTitle, QWidget* parent, bool mirrored);
    QVBoxLayout* createLabelAndWidget(const QString& labelText, QWidget* widget, QWidget* parent);

    // Helper function to simplify QDial creation
    QDial* createCustomQDial(int rangeMin, int rangeMax, bool wrapping, bool visibleNotches, bool tracking);

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

    // QProcess to run Python processes
    QProcess *midiProcess;
    QProcess *analogHighpassFilterProcess;
    QProcess *analogLowpassFilterProcess;
    QProcess *dmaHighpassFilterProcess;
    QProcess *dmaLowpassFilterProcess;
};

#endif // AUDIOEFFECTWIDGET_H
