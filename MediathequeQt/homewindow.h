#ifndef HOMEWINDOW_H
#define HOMEWINDOW_H

#include <QMainWindow>
#include <QListView>

namespace Ui {
class HomeWindow;
}

class HomeWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit HomeWindow(QWidget *parent = 0);
    ~HomeWindow();


private slots:
    void on_ajouter_clicked();

    void on_supprimer_clicked();


    void on_editer_clicked();

    void on_associer_clicked();

    void on_rechercher_clicked();

    void on_detail_clicked();

private:
    Ui::HomeWindow *ui;

    void filter(QString filter_string);
    void hide_all();
};

#endif // HOMEWINDOW_H
