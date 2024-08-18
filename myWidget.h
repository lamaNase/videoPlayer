#pragma once

#include <QKeyEvent>
#include <QApplication>
#include <QWidget>
#include <iostream>
#include "header.h"


class MyWidget : public QWidget {
    Q_OBJECT

public:
    MyWidget(QWidget *parent = nullptr);

protected:
    void keyPressEvent(QKeyEvent *event) override;
};
