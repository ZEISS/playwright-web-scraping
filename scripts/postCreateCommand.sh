#!/bin/bash
# This script is executed after the creation of a new project.

sudo apt-get update
sudo apt-get install -y libdbus-1-3\
        libatk1.0-0\
        libatk-bridge2.0-0\
        libcups2\
        libdrm2\
        libxcomposite1\
        libxdamage1\
        libxfixes3\
        libxrandr2\
        libgbm1\
        libxkbcommon0\
        libpango-1.0-0\
        libcairo2\
        libasound2\
        libatspi2.0-0
sudo apt-get install -y libx11-xcb1\
    libxcursor1\
    libgtk-3-0\
    libpangocairo-1.0-0\
    libcairo-gobject2\
    libgdk-pixbuf-2.0-0