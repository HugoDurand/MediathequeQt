#include "detailwindow.h"
#include "ui_detailwindow.h"
#include <QMessageBox>

DetailWindow::DetailWindow(QString value,QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::DetailWindow)
{
    ui->setupUi(this);
    this->setWindowTitle(value);
    ui->titrelabel->setText(value);

}

DetailWindow::~DetailWindow()
{
    delete ui;
}
