#!/bin/bash
echo "Installing numpy"
pip install numpy

echo "Installing OpenCV 3.0.0"
cd ~/opencv-3.0.0/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.0.0/modules -D BUILD_EXAMPLES=ON ..

make -j4

sudo make install 

sudo ldconfig

