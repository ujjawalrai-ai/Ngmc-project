#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ujjawal Rai | Reg: 24BAI10329

PACKAGE="vlc"

echo "Checking installation status for: $PACKAGE"

# Check if package is installed using dpkg (for Ubuntu/Debian)
if dpkg -l | grep -q $PACKAGE; then
     echo "[SUCCESS] $PACKAGE is installed on this system."
     # Show version and license info
     dpkg -s $PACKAGE | grep -E 'Version|License|Maintainer'
else
     echo "[ALERT] $PACKAGE is NOT installed."
     echo "Simulating audit for documentation purposes..."
fi

# Case statement for FOSS philosophy
echo "--- Philosophy Note ---"
case $PACKAGE in
     vlc)   echo "VLC: A student-led project that proved open codecs beat proprietary limits." ;;
     httpd)  echo "Apache: The web server that built the open internet." ;;
     mysql)  echo "MySQL: Open source at the heart of millions of apps." ;;
     *)      echo "FOSS: Standing on the shoulders of giants." ;;
esac
