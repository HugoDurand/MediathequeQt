#include <QApplication>
#include <QPushButton>
#include <QWidget>
#include <QFont>

int main (int argc, char *argv[]){

    QApplication *app = new QApplication (argc, argv);

    QWidget *box = new QWidget();
    box->resize(200,100);


    QPushButton *hello = new QPushButton("Exit", box);
    hello->resize(100,50);
    hello->move(50,35);
    hello->setFont(QFont("Times", 18, QFont::Bold));

    box->show();

    QObject::connect(hello, SIGNAL(clicked()), app, SLOT(quit()));

    return app->exec();
}
