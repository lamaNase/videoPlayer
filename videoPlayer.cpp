
// Convert cv::Mat to QImage for display in QLabel
QImage matToQImage(cv::Mat mat) {
    	cv::Mat rgb;
    	cv::cvtColor(mat, rgb, cv::COLOR_BGR2RGB);
    	QImage qimage1(rgb.data, rgb.cols, rgb.rows, rgb.step, QImage::Format_RGB888);
	QImage image = qimage1.copy();
	return image;
}

void updateSpeed(SpeedCategory speed, QTimer *timer, MyWidget* window) {
	currentSpeed = speed;
        timer->stop();
        timer->start(int(1000 / currentSpeed));
        window->setFocus();
}

void play(int argc, char *argv[]) {
    QApplication app(argc, argv);
    
    // Create a main window
    MyWidget* window = new MyWidget;
    window->setWindowTitle("Dynamic Frame Rate Video Player with Real-Time Speed Control");
    window->showMaximized();
    window->setFocus();

    // Set a background color
    QPalette pal = window->palette();
    pal.setColor(QPalette::Window, QColor(45, 45, 48));  // Dark grey background
    window->setAutoFillBackground(true);
    window->setPalette(pal);

    // Create a label with some text
    QLabel *label = new QLabel(window);
    label->setAlignment(Qt::AlignCenter);
    
    // Create the Play button
    QPushButton *playButton = new QPushButton("Play");
    //#4CAF50
    playButton->setStyleSheet(
        "QPushButton {"
        "  background-color: #FFFFFF;"  // Green color
        "  color: black;"
        "  font-size: 24px;"
        "  border-radius: 10px;"
        "  padding: 10px 20px;"
        "}"
        "QPushButton:hover {"
        "  background-color: #45a049;"
        "}"
        "QPushButton:pressed {"
        "  background-color: #357a38;"
        "}"
    );
    playButton->setIcon(QIcon("../icons/play_icon.png"));
    playButton->setIconSize(QSize(40, 40));

    // Create the Pause button
    QPushButton *pauseButton = new QPushButton("Pause");
    pauseButton->setStyleSheet(
        "QPushButton {"
        "  background-color: #FFFFFF;"  // Red color
        "  color: black;"
        "  font-size: 24px;"
        "  border-radius: 10px;"
        "  padding: 10px 20px;"
        "}"
        "QPushButton:hover {"
        "  background-color: #e53935;"
        "}"
        "QPushButton:pressed {"
        "  background-color: #b71c1c;"
        "}"
    );
    pauseButton->setIcon(QIcon("../icons/pause_icon.png"));
    pauseButton->setIconSize(QSize(40, 40));

    // Connect the buttons to lambda functions (example, no actual functionality)
    QObject::connect(playButton, &QPushButton::clicked, [=]() {
        played = true;
        window->setFocus();
    });

    QObject::connect(pauseButton, &QPushButton::clicked, [=]() {
        played = false;
        window->setFocus();
    });

    // Set up a horizontal layout for the buttons
    QHBoxLayout *buttonLayout = new QHBoxLayout;
    buttonLayout->addWidget(playButton);
    buttonLayout->addWidget(pauseButton);

    // Set up the main layout
    QVBoxLayout *framesLayout = new QVBoxLayout;
    framesLayout->addWidget(label);
    framesLayout->addStretch();  // Add some spacing between label and buttons
    framesLayout->addLayout(buttonLayout);
    
    QHBoxLayout *mainLayout = new QHBoxLayout;
    mainLayout->addLayout(framesLayout);
    framesLayout->addStretch();
    
    // Create the speed control buttons
    QPushButton* defaultSpeedButton = new QPushButton("x1", window);
    QPushButton* doubleSpeedButton = new QPushButton("x2", window);
    QPushButton* halfSpeedButton = new QPushButton("x0.5", window);

    defaultSpeedButton->setStyleSheet (
        "QPushButton {"
        "  background-color: #0078d7;"
        "  color: white;"
        "  font-size: 35px;"
        "  border-radius: 10px;"
        "  padding: 10px 10px;"
        "}"
        "QPushButton:hover {"
        "  background-color: #FFD700;"
        "}"
        "QPushButton:pressed {"
        "  background-color: #FFC107;"
        "}"
    );
    
    doubleSpeedButton->setStyleSheet (
        "QPushButton {"
        "  background-color: #0078d7;"
        "  color: white;"
        "  font-size: 35px;"
        "  border-radius: 10px;"
        "  padding: 10px 10px;"
        "}"
        "QPushButton:hover {"
        "  background-color: #FFD700;"
        "}"
        "QPushButton:pressed {"
        "  background-color: #FFC107;"
        "}"
    );
    
    halfSpeedButton->setStyleSheet (
        "QPushButton {"
        "  background-color: #0078d7;"
        "  color: white;"
        "  font-size: 35px;"
        "  border-radius: 10px;"
        "  padding: 10px 10px;"
        "}"
        "QPushButton:hover {"
        "  background-color: #FFD700;"
        "}"
        "QPushButton:pressed {"
        "  background-color: #FFC107;"
        "}"
    );
    
    // Create a QTimer to periodically update the image
    QTimer *timer = new QTimer(window);
    
    // Connect the buttons to lambda functions (example, no actual functionality)
    QObject::connect(defaultSpeedButton, &QPushButton::clicked, [=]() {
        updateSpeed(Default, timer, window);
    });

    QObject::connect(doubleSpeedButton, &QPushButton::clicked, [=]() {
        updateSpeed(Double, timer, window);
    });

    QObject::connect(halfSpeedButton, &QPushButton::clicked, [=]() {
        updateSpeed(Half, timer, window);
    });

    QVBoxLayout *controlButtons = new QVBoxLayout;
    controlButtons->setSpacing(1);
    controlButtons->setContentsMargins(0, 0, 0, 0);
    controlButtons->addWidget(defaultSpeedButton);
    controlButtons->addWidget(doubleSpeedButton);
    controlButtons->addWidget(halfSpeedButton);
    

    mainLayout->addSpacing(5);

    mainLayout->addLayout(controlButtons);

    // Set the layout on the main window
    window->setLayout(mainLayout);
    
    // Declare a QElapsedTimer variable
    QElapsedTimer timerElapsed;
    timerElapsed.start();  // Start the timer before the first frame is displayed

    
    QObject::connect(timer, &QTimer::timeout, [&]() {
	if (played) {
         	if (currentIndex >= files.size())
        		    currentIndex = 0;
        	cv::Mat image = cv::imread(files.at(currentIndex++));
        	
        	if (dir == clockWise)
        		image = rotateFrame(image, -1, rightAngle);
        	else if (dir == counterClockWise)
        		image = rotateFrame(image, 1, leftAngle);
        	if (mode == grey)
        		image = getGreyImage(image);
        	else if (mode == only_red)
        		image = getRedChannel(image);
        	// Resize the image
    		cv::Mat resizedImage;
    		cv::resize(image, resizedImage, cv::Size(width, height));
    		
        	// Calculate the time taken since the last frame
    		qint64 elapsedTime = timerElapsed.elapsed(); // Time in milliseconds
    		
    		// calculate frame rate
    		int rate = int (1000 / elapsedTime);
    		
    		std::string text = "Frame Rate = " + std::to_string(rate) + " frame/sec";
		cv::putText(resizedImage, text, cv::Point(480, 30),
		       cv::FONT_HERSHEY_SIMPLEX,1, cv::Scalar(255, 255, 255), 2);
			
        	QImage qimage = matToQImage(resizedImage);
        	label->setPixmap(QPixmap::fromImage(qimage));
        	
    		
    		// Reset the timer for the next frame
    		timerElapsed.restart();

        }
    });
    
    
    // Start the timer with  (frame rate = currentSpeed frame/second)
    timer->start(int(1000/currentSpeed));

    // Show the window
    window->show();

    // Run the application event loop
    app.exec();
}

