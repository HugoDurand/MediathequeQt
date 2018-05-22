#ifndef DETAILWINDOW_H
#define DETAILWINDOW_H

#include <QMainWindow>

namespace Ui {
class DetailWindow;
}

class DetailWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit DetailWindow(QString value,QWidget *parent = 0);
    ~DetailWindow();

private:
    Ui::DetailWindow *ui;
};

#endif // DETAILWINDOW_H
