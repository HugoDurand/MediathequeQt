#include "editwindow.h"
#include "ui_editwindow.h"

EditWindow::EditWindow(QString value, QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::EditWindow)
{
    ui->setupUi(this);
    this->setWindowTitle(value);
}

EditWindow::~EditWindow()
{
    delete ui;
}
