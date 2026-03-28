#!/bin/bash
# Script 4: Log File Analyzer
# Author: Ujjawal Rai | Reg: 24BAI10329

# Argument 1 is the log file, Keyword defaults to 'error'
LOGFILE=${1:-"vlc_audit.log"}
KEYWORD="error"
COUNT=0

# Create a dummy log file if none exists to demonstrate the script
if [ ! -f "$LOGFILE" ]; then
    echo "Creating sample log for demonstration..."
    echo -e "error: VLC plugin failed to load\ninfo: player started\nerror: hardware acceleration off" > "$LOGFILE"
fi

echo "Scanning $LOGFILE for keyword: '$KEYWORD'..."

# While-read loop to process file line by line
while IFS= read -r LINE; do
     if echo "$LINE" | grep -iq "$KEYWORD"; then
          COUNT=$((COUNT + 1))
          echo "Match found: $LINE"
     fi
done < "$LOGFILE"

echo "---------------------------------------"
echo "Total occurrences of '$KEYWORD': $COUNT"
echo "--- Last 2 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 2
