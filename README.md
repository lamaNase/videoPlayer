<<<<<<< HEAD
# Dynamic Frame Rate Video Player 📹 🎬

This project performs a simple video player with speed control. it displays
a set of images using Qt5 for GUI in C++. The player has a play/pause capabilities 
and controls the frame rate of the video.

# Step for Building the Project 📋

## 1- Reading Images 📥 🖼️

The first step is reading all images from a folder
that holds the frames of the video and store them 
in a **std::vector<std::string>** this vector of 
strings includes that paths of the images.

## 2- Sort Images 🗂️ 🔄

The paths read from the file now have to be sorted
to ensure that we have the right order of the frames
to be desolayed in the video


⚠️ **I did not store the images dirctly since this
		need a lot of RAM allocation and made my device stock**


## 3- Start Qt5 for GUI 🖥️ 📦

This step establishes the main Qt window that will display
the video along with some other features. It has three main
componants
- Image Part 🖼️ where the frame will be shown in
- Play/Pause buttons ▶️ ⏸️ controls playing or stoping the videp
- Speed control buttons 🎛️ that controls the frame rate


## 4- Start QTimer with the default frame rate ⏰

A QTimer is used to periodically displaying fraes on the image part
of the window. the timer executes some code every specific amount of
time in miliseconds this amount can be calculated throught the following
equation :

   > time (ms) = 1000 / (number of frames will be displayed every 1 second)

The default frame rate is set to 30. However when the user clicks on (x2) buttons
the frame rate will be now 60. If he clicks on (x0.5) button the frame rate will
be 15. Every time the user click on any speed options the timer stops, calculating
the new time amount and then starts again with the new miliseconds time calculated.


## 5- Read and convert image matrix to QImage 📷 📄

Every time the QTimer called it executes some code after passing a specific amount of time. The execution performs reading the image matrix from the vecctore that we have stored the paths of the images inside it. After that, the read image matric converted to QImage so it can easily displayed on the Qt window. Also this image will include the current frame rate printed on the top corner of the frame (image).


## 6- Handling Play ▶️ and Pause ⏸️ functionalities

As mentioned before the Qt window has an important part that includes the play and pause buttons. When the user clicks on onee of these buttons, it changes a specifice boolean variable. This variable is responsable for determining if the program have to read the next frame and display it or stop reading till it played again.

# How can you run the code ❓

### You can run the program through executing the following commands:

>**mkdir build**

>**cd build**

>**cmake ..**

>**make**

>**./video**


# Example 💡

The following video shows a how the output should appear


[Screencast from 08-13-2024 10:39:00 PM.webm](https://github.com/user-attachments/assets/88401b16-f634-4d66-abd0-b969ecacc61f)

<<<<<<< HEAD



=======
>>>>>>> origin/main

=======
# videoPlayer
>>>>>>> origin/main
