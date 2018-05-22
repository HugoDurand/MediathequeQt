#include "dbconnect.h"
#include<QSql>
#include<QSqlDatabase>
#include<QSqlDriver>
#include <QMessageBox>

DBConnect::DBConnect()
{

    QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
        db.setHostName("localhost");
        db.setPort('8889');
        db.setDatabaseName("MediathequeQt");
        db.setUserName("root");
        db.setPassword("root");
        bool ok = db.open();

        if(ok){
            QMessageBox::information(0,"Connexion","Vous êtes connecté !");
            db.close();
        }else{
            QMessageBox::critical(0,"Connexion","La connexion a échoué !");
        }


}
