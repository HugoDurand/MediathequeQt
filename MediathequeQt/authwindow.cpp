#include "authwindow.h"
#include "ui_authwindow.h"
#include "homewindow.h"
#include <QMessageBox>

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

    QString login = ui->login->text();
    QString password = ui->password->text();

    //(login.compare("hugo") == 0) == (login == "hugo")

    if(login.compare("admin") == 0 && password.compare("password") == 0){
        HomeWindow *home = new HomeWindow();
        home->show();
        this->close();
    }else{
        QMessageBox::critical(0,"Credentials","Identifiants incorrects");
    }
}
