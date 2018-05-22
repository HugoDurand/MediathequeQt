#include "homewindow.h"
#include "ui_homewindow.h"
#include "detailwindow.h"
#include "editwindow.h"
#include "associatewindow.h"
#include <QSqlQuery>
#include <dbconnect.h>
#include <QListWidget>
#include <QMessageBox>

HomeWindow::HomeWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::HomeWindow)
{
    ui->setupUi(this);


    //DBConnect *db = new DBConnect();
    //QSqlQuery query;
    //query.exec("SELECT * FROM album");


}

HomeWindow::~HomeWindow()
{
    delete ui;
}

void HomeWindow::on_ajouter_clicked()
{
    QString item;
    item = ui->item->text();
    if(item.isEmpty())
        return;
    ui->listWidget->addItem(item);
}

void HomeWindow::on_supprimer_clicked()
{
    delete ui->listWidget->currentItem();

}

void HomeWindow::on_editer_clicked()
{

    if(ui->listWidget->currentItem()){
        QString value = ui->listWidget->currentItem()->text();
        EditWindow *edit = new EditWindow(value);
        edit->show();
        }
}

void HomeWindow::on_associer_clicked()
{
    if(ui->listWidget->currentItem()){
        QString value = ui->listWidget->currentItem()->text();
        AssociateWindow *asso = new AssociateWindow(value);
        asso->show();
        }
}

void HomeWindow::filter(QString filter_string)
{
  hide_all();
  QList<QListWidgetItem*> matches ( ui->listWidget->findItems(filter_string, Qt::MatchFlag::MatchContains) );
  for(QListWidgetItem* item : matches)
    item->setHidden(false);
}

void HomeWindow::hide_all()
{
  for(int row(0); row < ui->listWidget->count(); row++ )
    ui->listWidget->item(row)->setHidden(true);
}


void HomeWindow::on_rechercher_clicked()
{
QString filter_string = ui->item->text();
    filter(filter_string);

}

void HomeWindow::on_detail_clicked()
{
    if(ui->listWidget->currentItem()){
        QString value = ui->listWidget->currentItem()->text();
        DetailWindow *detail = new DetailWindow(value);
        detail->show();
        }

}
