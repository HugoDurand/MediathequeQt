#include "authwindow.h"
#include "ui_authwindow.h"
#include "homewindow.h"

AuthWindow::AuthWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::AuthWindow)
{
    ui->setupUi(this);
}

AuthWindow::~AuthWindow()
{
    delete ui;
}

void AuthWindow::on_ButtonConnex_clicked()
{
    HomeWindow *home = new HomeWindow();
    home->show();
    this->close();
}
