#include <QApplication>
#include "authwindow.h"

int main(int argc, char *argv[])
{
   QApplication app(argc, argv);
   AuthWindow w;
   w.show();

   return app.exec();
}
