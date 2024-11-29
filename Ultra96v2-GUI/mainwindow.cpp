#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "bluetoothwidget.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // Create an instance of BluetoothWidget
    bluetoothWidget = new BluetoothWidget(this);

    // Set the BluetoothWidget as the central widget of the MainWindow
    setCentralWidget(bluetoothWidget);
}

MainWindow::~MainWindow()
{
    delete ui;
}
