#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ujjawal Rai | Reg: 24BAI10329

# List of critical directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/usr/lib/vlc")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
     if [ -d "$DIR" ]; then
          # Extracting permissions and owner using awk
          PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
          # Extracting directory size
          SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
          echo "LOCATION: $DIR => Perms: $PERMS | Size: $SIZE"
     else
          echo "[INFO] $DIR does not exist on this specific Linux build."
     fi
done

# Checking specific VLC config directory
if [ -d "$HOME/.config/vlc" ]; then
    echo "VLC User Config found at $HOME/.config/vlc"
    ls -ld "$HOME/.config/vlc"
fi
