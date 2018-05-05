#include <QApplication>
#include "authwindow.h"

int main(int argc, char *argv[])
{
   QApplication app(argc, argv);
   AuthWindow window;
   window.show();

   return app.exec();
}
