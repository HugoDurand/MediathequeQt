#ifndef AUTHWINDOW_H
#define AUTHWINDOW_H
#include<QMainWindow>
#include<QPushButton>

namespace ui {
class AuthWindow;
}


class AuthWindow : public QMainWindow
{

Q_OBJECT

public:
    explicit AuthWindow(QWidget *parent = 0);

private:
    QPushButton *ButtonConnex;

private slots:
    void goToHomePage();
};


#endif // AUTHWINDOW_H
