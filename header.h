#pragma once

#include <opencv2/opencv.hpp>
#include <filesystem>
#include <vector>
#include <string>
#include <algorithm>
#include <iostream>

#include <QApplication>
#include <QWidget>
#include <QPushButton>
#include <QLabel>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QPalette>
#include <QImage>
#include <QTimer>
#include <QSlider>
#include <QKeyEvent>
#include <QElapsedTimer>

extern std::vector<std::string> files;

// Create a large image to hold all sections
extern int width;
extern int height;

extern bool played;
extern int currentIndex;

enum SpeedCategory {
	Default = 30,
        Double = 60,
        Half = 15
};

extern SpeedCategory currentSpeed;

enum rotateDirection {
	normalDir = 0,
	clockWise = 1,
	counterClockWise = 2
};

enum colorMode {
	normalColor = 0,
	grey = 1,
	only_red = 2
};

extern rotateDirection dir;
extern double rightAngle, leftAngle;
extern colorMode mode;

#include <QApplication>
#include <QWidget>
#include <QKeyEvent>
#include <QDebug>


// Functions defenetions
std::vector<std::string> getSortFiles(const std::string& folderPath);
QImage matToQImage(cv::Mat mat);
void play(int argc, char *argv[]);
cv::Mat rotateFrame(cv::Mat frame, int direction, double angle);
cv::Mat getGreyImage(cv::Mat frame);
cv::Mat getRedChannel(cv::Mat frame);


