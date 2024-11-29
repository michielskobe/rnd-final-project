#ifndef BLUETOOTHWIDGET_H
#define BLUETOOTHWIDGET_H

#include <QWidget>
#include <QListWidget>
#include <QPushButton>
#include <QProcess>
#include <QVBoxLayout>
#include <QMessageBox>
#include <iostream>
#include <QRegularExpression>

class BluetoothWidget : public QWidget
{
    Q_OBJECT

public:
    explicit BluetoothWidget(QWidget *parent = nullptr);
    ~BluetoothWidget();

private slots:
    void startDiscovery();
    void connectToDevice();
    void onProcessFinished(int exitCode, QProcess::ExitStatus exitStatus);
    void onReadyReadStandardOutput();
    void onReadyReadStandardError();

private:
    void handleDeviceFound(const QString &output);
    void handleConnectionSuccess(const QString &output);
    void handleErrorOutput(const QString &errorOutput);

    QListWidget *deviceListWidget;
    QPushButton *scanButton;
    QPushButton *connectButton;
    QProcess *bluetoothProcess;
    QString selectedDeviceAddress;
};

#endif // BLUETOOTHWIDGET_H
