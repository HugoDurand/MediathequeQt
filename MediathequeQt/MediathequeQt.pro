QT += widgets
QT += network
QT += core
QT+=sql
TARGET = mysql


SOURCES += \
    main.cpp \
    homewindow.cpp  \
    authwindow.cpp \
    dbconnect.cpp

HEADERS += \
    homewindow.h \
    authwindow.h \
    dbconnect.h

FORMS += \
    homewindow.ui \
    authwindow.ui
