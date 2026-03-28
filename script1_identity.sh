#!/bin/bash
# Script 1: System Identity Report
# Author: Ujjawal Rai | Reg: 24BAI10329
# Course: Open Source Software Audit

# --- Variables ---
STUDENT_NAME="Ujjawal Rai"
SOFTWARE_CHOICE="VLC Media Player"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# Extracting the Distro name from os-release
DISTRO=$(grep "PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "================================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================================"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "OS Distribution : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $(date)"
echo "------------------------------------------------"
echo "Note: This system runs on Open Source foundations."
echo "================================================"
