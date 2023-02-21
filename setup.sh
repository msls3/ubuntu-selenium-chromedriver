#!/bin/bash

# Set Clock
sudo hwclock --hctosys

# Upgrade
sudo apt -y update
sudo apt -y upgrade

# Install pip
sudo apt install -y python3-pip
pip install selenium

# Install Chrome
sudo apt install -y wget fonts-ipafont-gothic
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
sudo apt install -y -f
google-chrome -version
which google-chrome

# Install ChromeDriver
python3 setting_chromedriver.py
chromedriver -v
which chromedriver
