#!/usr/bin/env bash

cd /home/deva/offline_materials/sa

# Convert all PDF files with "Key" in their names to text files:
for file in *[0-9]*.pdf; do pdftotext "$file" "${file%.pdf}.txt"; done

# Combine the text files into one using the cat command:
cat *[0-9]*.txt > "/home/deva/Documents/pali_resources/pāli-course/suttas_combined.txt"
rm *.txt

echo "Suttas combined"

# Remove all variations of quotations from the combined text file
cd /home/deva/Documents/dps/utilities
python3 clean_text.py "/home/deva/Documents/pali_resources/pāli-course/suttas_combined.txt"
