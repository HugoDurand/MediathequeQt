#ifndef AUTHWINDOW_H
#define AUTHWINDOW_H

#include <QMainWindow>

namespace Ui {
class AuthWindow;
}

class AuthWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit AuthWindow(QWidget *parent = 0);
    ~AuthWindow();

private slots:
    void on_ButtonConnex_clicked();

private:
    Ui::AuthWindow *ui;
};

#endif // AUTHWINDOW_H
