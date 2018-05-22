#include "associatewindow.h"
#include "ui_associatewindow.h"

AssociateWindow::AssociateWindow(QString value, QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::AssociateWindow)
{
    ui->setupUi(this);
    this->setWindowTitle(value);

    ui->labelfilm->setText(value);
}

AssociateWindow::~AssociateWindow()
{
    delete ui;
}
