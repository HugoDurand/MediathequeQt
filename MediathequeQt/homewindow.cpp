#include "homewindow.h"
#include "ui_homewindow.h"
#include <QSqlQuery>
#include <dbconnect.h>

HomeWindow::HomeWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::HomeWindow)
{
    ui->setupUi(this);


    DBConnect *db = new DBConnect();
    //QSqlQuery query;
    //query.exec("SELECT * FROM album");


}

HomeWindow::~HomeWindow()
{
    delete ui;
}
