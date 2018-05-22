#ifndef EDITWINDOW_H
#define EDITWINDOW_H

#include <QMainWindow>
#include <QListWidgetItem>

namespace Ui {
class EditWindow;
}

class EditWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit EditWindow(QString value, QWidget *parent = 0);
    ~EditWindow();

private:
    Ui::EditWindow *ui;
};

#endif // EDITWINDOW_H
