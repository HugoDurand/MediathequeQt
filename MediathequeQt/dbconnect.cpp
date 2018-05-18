#include "dbconnect.h"
#include<QSql>
#include<QSqlDatabase>
#include<QSqlDriver>

DBConnect::DBConnect()
{

    QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
        db.setHostName("localhost");
        db.setDatabaseName("MediathequeQt");
        db.setUserName("root");
        db.setPassword("root");
        bool ok = db.open();

}
