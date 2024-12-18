#include "bluetoothwidget.h"

BluetoothWidget::BluetoothWidget(QWidget *parent)
    : QWidget(parent),
    bluetoothProcess(new QProcess(this))
{
    // Set up UI components
    deviceListWidget = new QListWidget(this);
    scanButton = new QPushButton("Start Scan", this);
    connectButton = new QPushButton("Connect", this);
    connectButton->setEnabled(false);

    QVBoxLayout *layout = new QVBoxLayout;
    layout->addWidget(deviceListWidget);
    layout->addWidget(scanButton);
    layout->addWidget(connectButton);
    setLayout(layout);

    // Connect signals and slots
    connect(scanButton, &QPushButton::clicked, this, &BluetoothWidget::startDiscovery);
    connect(connectButton, &QPushButton::clicked, this, &BluetoothWidget::connectToDevice);

    // Set up the process to handle bluetoothctl commands
    connect(bluetoothProcess, static_cast<void (QProcess::*)(int, QProcess::ExitStatus)>(&QProcess::finished), this, &BluetoothWidget::onProcessFinished);
    connect(bluetoothProcess, &QProcess::readyReadStandardOutput, this, &BluetoothWidget::onReadyReadStandardOutput);
    connect(bluetoothProcess, &QProcess::readyReadStandardError, this, &BluetoothWidget::onReadyReadStandardError);
}

BluetoothWidget::~BluetoothWidget() {}

void BluetoothWidget::startDiscovery()
{
    deviceListWidget->clear();
    std::cout << "Starting Bluetooth scan..." <<std::endl;

    // Start bluetoothctl in interactive mode
    bluetoothProcess->start("bluetoothctl");
    if (!bluetoothProcess->waitForStarted()) {
        std::cout << "Failed to start bluetoothctl." <<std::endl;
        return;
    }

    // Send the 'scan on' command to bluetoothctl
    bluetoothProcess->write("scan on\n");
}

void BluetoothWidget::connectToDevice()
{
    QListWidgetItem *selectedItem = deviceListWidget->currentItem();
    if (!selectedItem)
    {
        QMessageBox::warning(this, "No Device Selected", "Please select a device to connect to.");
        return;
    }

    QString deviceName = selectedItem->text();
    selectedDeviceAddress = deviceName.split("[").last().split("]").first().trimmed();

    if (selectedDeviceAddress.isEmpty()) {
        QMessageBox::warning(this, "Invalid Device Address", "Could not extract a valid device address.");
        return;
    }

    std::cout << "Connecting to device: " << selectedDeviceAddress.toStdString() << std::endl;

    // Send the pair command
    bluetoothProcess->write(QString("pair %1\n").arg(selectedDeviceAddress).toUtf8());
    std::cout << "Send pair request to device: " << selectedDeviceAddress.toStdString() << std::endl;

    // Connect to process output for passkey confirmation
    connect(bluetoothProcess, &QProcess::readyReadStandardOutput, this, &BluetoothWidget::onReadyReadStandardOutput);

    // Ensure you're connected to the device after pairing
    connect(bluetoothProcess, &QProcess::readyReadStandardError, this, &BluetoothWidget::onReadyReadStandardError);
}

void BluetoothWidget::onReadyReadStandardOutput()
{
    QString output = bluetoothProcess->readAllStandardOutput();

    // If the passkey prompt appears, send "yes"
    if (output.contains("Confirm passkey")) {
        bluetoothProcess->write("yes\n");
        std::cout << "Passkey confirmation sent." << std::endl;
    }

    // Handle successful pairing
    if (output.contains("Pairing successful")) {
        std::cout << "Pairing successful: " << output.toStdString() << std::endl;

        // Trust the device after successful pairing
        bluetoothProcess->write(QString("trust %1\n").arg(selectedDeviceAddress).toUtf8());
        bluetoothProcess->write(QString("connect %1\n").arg(selectedDeviceAddress).toUtf8());
    }

    // Detect connection success
    if (output.contains("Connection successful")) {
        QMessageBox::information(this, "Connected", "Successfully connected to the Bluetooth device!");
    } else if (output.contains("Failed to connect")) {
        QMessageBox::warning(this, "Connection Failed", "Failed to connect to the selected device.");
    }

    // Parse discovered devices
    QStringList lines = output.split("\n", Qt::SkipEmptyParts);
    for (const QString &line : lines) {
        if (line.contains("Device", Qt::CaseInsensitive)) {
            handleDeviceFound(line);
        }
    }
}

void BluetoothWidget::onReadyReadStandardError()
{
    QString errorOutput = bluetoothProcess->readAllStandardError();
    std::cout << "Error output: " << errorOutput.toStdString() << std::endl;
    handleErrorOutput(errorOutput);
}

void BluetoothWidget::handleDeviceFound(const QString &output)
{
    // Use QRegularExpression to parse the device address and name
    QRegularExpression regex("Device\\s+([0-9A-F:]+)\\s+(.+)");
    QRegularExpressionMatch match = regex.match(output);

    if (match.hasMatch()) {
        QString deviceAddress = match.captured(1);
        QString deviceName = match.captured(2);

        // Add the device to the list widget
        deviceListWidget->addItem(deviceName + " [" + deviceAddress + "]");

        // Enable the connect button
        connectButton->setEnabled(true);
    }
}

void BluetoothWidget::handleErrorOutput(const QString &errorOutput)
{
    std::cout << "Error output: " << errorOutput.toStdString() <<std::endl;
    if (errorOutput.contains("Failed to connect", Qt::CaseInsensitive)) {
        QMessageBox::warning(this, "Connection Failed", "Failed to connect to the selected device.");
    }
}

void BluetoothWidget::onProcessFinished(int exitCode, QProcess::ExitStatus exitStatus)
{
    if (exitStatus == QProcess::NormalExit) {
        std::cout << "Process finished successfully with exit code:" << exitCode <<std::endl;
    } else {
        std::cout << "Process finished abnormally." <<std::endl;
    }
}

