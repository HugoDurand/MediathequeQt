#include "authwindow.h"
#include "homewindow.h"
#include<QWidget>
#include <QLineEdit>
#include<QFormLayout>
#include<QPushButton>
#include<QMainWindow>
#include<iostream>


AuthWindow::AuthWindow(QWidget *parent) : QMainWindow(parent)
{

    //création de champs
    QLineEdit *log=new QLineEdit;
    QLineEdit *pwd=new QLineEdit;

    //creation de label
    QFormLayout *layout=new QFormLayout;
    layout->addRow("Username :",log);
    layout->addRow("Mot de Passe   :",pwd);

    //creation du layout
    QVBoxLayout *layoutPrincipal = new QVBoxLayout;

    //ajout des champs avec label au layout
    layoutPrincipal->addLayout(layout);

    //creation d'un bouton et ajout au layout
    ButtonConnex = new QPushButton("Connexion", this);
    QObject::connect(ButtonConnex, SIGNAL(clicked()), this, SLOT(goToHomePage()));
    ButtonConnex->setFont(QFont("Georgia",18));
    layoutPrincipal->addWidget(ButtonConnex);

    //création de la fenetre
    QWidget *window = new QWidget;

    //rattachement du layout à la fenetre
    window->setLayout(layoutPrincipal);
    window->setWindowTitle("Authentification");
    window->show();

}

void AuthWindow::goToHomePage(){

    HomeWindow *home = new HomeWindow();
    home->show();
}
