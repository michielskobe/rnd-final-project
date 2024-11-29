#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "bluetoothwidget.h"
#include "audioeffectwidget.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // Create an instance of the necessary widgets
    bluetoothWidget = new BluetoothWidget(this);
    audioEffectWidget = new AudioEffectWidget(this);

    // Create a QTabWidget
    tabWidget = new QTabWidget(this);
    tabWidget->addTab(audioEffectWidget, "Audio effects");
    tabWidget->addTab(bluetoothWidget, "Bluetooth connectivity");



    // Set the tab widget as the central widget
    setCentralWidget(tabWidget);
}

MainWindow::~MainWindow()
{
    delete ui;
}
