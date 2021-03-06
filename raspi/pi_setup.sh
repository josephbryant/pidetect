#!/bin/bash

echo "Starting shell script"
echo "Installing requirements"
sudo apt-get install build-essential git cmake pkg-config --force-yes
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev --force-yes
sudo apt-get install libxvidcore-dev libx264-dev --force-yes
sudo apt-get install libgtk2.0-dev --force-yes
sudo apt-get install libatlas-base-dev gfortran --force-yes
sudo apt-get install python2.7-dev python3-dev --force-yes

echo "Acquiring OpenCV 3.0.0"
cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.0.0.zip
unzip opencv.zip

echo "Acquiring OpenCV Contributions 3.0.0"
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.0.0.zip
unzip opencv_contrib.zip

echo "Acquiring pip"
wget https://bootstrap.pypa.io/get-pip.py 
sudo python get-pip.py

echo "Installing virtual environments. . ."
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip

echo "Preparing .profile for virtual environments. . ."
sudo echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile
sleep 1
sudo echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile
sleep 1
source ~/.profile
echo "Setting up virtual environment (cv)"
mkvirtualenv cv
workon cv



