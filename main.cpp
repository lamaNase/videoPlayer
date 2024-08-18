#include "header.h"
#include "myWidget.h"
#include "videoPlayer.cpp"

// declrations
std::vector<std::string> files;
int width = 980;
int height = 600;
bool played = true;
int currentIndex = 0;
SpeedCategory currentSpeed = Default;
rotateDirection dir = normalDir;
double rightAngle = 0, leftAngle = 0;
colorMode mode = normalColor;


int main(int argc, char *argv[]) {
    files = getSortFiles("../images");
    
    play(argc, argv);
    
    return 0;
}


std::vector<std::string> getSortFiles(const std::string& folderPath) {
    namespace fs = std::filesystem; // Namespace alias for filesystem
    std::vector<std::string> filenames;

    // Iterate through the directory and collect JPEG filenames
    for (const auto& entry : fs::directory_iterator(folderPath)) {
        if (entry.path().extension() == ".jpeg") {
            filenames.push_back(entry.path().string());
        }
    }

    // Sort filenames alphabetically (or based on your requirement)
    std::sort(filenames.begin(), filenames.end());

    return filenames;
}

cv::Mat rotateFrame(cv::Mat frame, int direction, double angle) {
    angle *= direction;
    cv::Mat rotatedFram;
    // Get the rotation matrix
    cv::Point2f center(frame.cols / 2.0, frame.rows / 2.0); // get the center point 
    cv::Mat rotationMatrix = cv::getRotationMatrix2D(center, angle, 1);

    // rotate the frame
    cv::warpAffine(frame, rotatedFram, rotationMatrix, frame.size());
    return rotatedFram;
}

cv::Mat getGreyImage(cv::Mat frame) {
    cv::Mat grayFrame;
    cv::cvtColor(frame, grayFrame, cv::COLOR_BGR2GRAY);
    return grayFrame;    
}

cv::Mat getRedChannel(cv::Mat frame) {
    cv::Mat redOnlyFrame = frame.clone(); // Create a copy of the original frame

    // Set the green and blue channels to zero
    for (int y = 0; y < redOnlyFrame.rows; ++y) {
        for (int x = 0; x < redOnlyFrame.cols; ++x) {
            // Access the pixel at (x, y)
            cv::Vec3b& pixel = redOnlyFrame.at<cv::Vec3b>(y, x);
            
            // Set the blue and green channels to 0, leaving only the red channel
            pixel[0] = 0; // Blue channel
            pixel[1] = 0; // Green channel
        }
    }
    return redOnlyFrame;
}
