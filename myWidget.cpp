#include "myWidget.h"

MyWidget::MyWidget(QWidget *parent) : QWidget(parent) {
    // Constructor implementation (if any)
}

void MyWidget::keyPressEvent(QKeyEvent *event) {
        //std::cout << "Key Pressed: " << event->key() << std::endl;
        if (event->key() == Qt::Key_Right) {
            dir = clockWise;
            rightAngle += 90.0;
        } else if (event->key() == Qt::Key_Left) {
            dir = counterClockWise;
            leftAngle += 90.0;
        } else if(event->key() == Qt::Key_Up) {
            mode = grey;
        } else if (event->key() == Qt::Key_Down) {
            mode = only_red;
        } else if (event->key() == Qt::Key_Return) { // if Enter key is pressed
            mode = normalColor;
            dir = normalDir;
        } else {
            // Call the base class implementation for other keys
            QWidget::keyPressEvent(event);
        }
}

