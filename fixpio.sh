#!/bin/sh

## install python if it isn't already installed, e.g. ##
#sudo apt-get install python

# remove problematic dist versions of pip and pyserial
sudo apt-get remove python-pip -y
sudo apt-get remove python-pyserial -y
# optional - python-serial includes other dependencies that can be cleaned up
sudo apt-get autoremove

# install pip
sudo easy_install pip
## alternate method
#sudo python get-pip.py

# force reinstall of setuptools and pyserial using python/pip tools
sudo pip install setuptools --force-reinstall -I
sudo pip install pyserial --force-reinstall -I
# install/update platformio
sudo pip install platformio -U
platformio update
