#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ujjawal Rai | Reg: 24BAI10329

echo "--- Answer three questions to generate your manifesto ---"
echo ""

# Reading user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Composing the paragraph using variables and redirection
echo "OPEN SOURCE MANIFESTO - $DATE" > "$OUTPUT"
echo "------------------------------------------" >> "$OUTPUT"
echo "I, $(whoami), believe that tools like $TOOL empower the world." >> "$OUTPUT"
echo "To me, software freedom is essential because it represents $FREEDOM." >> "$OUTPUT"
echo "I pledge to build $BUILD and share it openly with the community." >> "$OUTPUT"
echo "------------------------------------------" >> "$OUTPUT"

echo ""
echo "Manifesto successfully saved to $OUTPUT"
echo "Displaying content:"
cat "$OUTPUT"
