#include "dbconnect.h"
#include<QSql>
#include<QSqlDatabase>
#include<QSqlDriver>
#include <QMessageBox>

DBConnect::DBConnect()
{

    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
        db.setDatabaseName("mediatheque.db");
        bool ok = db.open();


}
