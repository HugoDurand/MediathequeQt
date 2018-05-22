#ifndef ASSOCIATEWINDOW_H
#define ASSOCIATEWINDOW_H

#include <QMainWindow>

namespace Ui {
class AssociateWindow;
}

class AssociateWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit AssociateWindow(QString value,QWidget *parent = 0);
    ~AssociateWindow();

private:
    Ui::AssociateWindow *ui;
};

#endif // ASSOCIATEWINDOW_H
