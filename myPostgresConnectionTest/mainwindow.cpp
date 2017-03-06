#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QSqlTableModel>
#include <QSqlDatabase>
#include <QSqlError>
#include <QMessageBox>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    auto db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("localhost");
    db.setPort(5432);
    db.setUserName("postgres");
    db.setPassword("12345");
    db.setDatabaseName("mydatabase");
    if (!db.open()) {
        QMessageBox::information(this, "Error", db.lastError().text());
        return;
    } else {
        QMessageBox::information(this, "OK", "OK");
    }

    mModel = new QSqlTableModel(this);
    ui->tableView->setModel(mModel);
    mModel->setTable("mytable");
    mModel->select();
}

MainWindow::~MainWindow()
{
    delete ui;
}
