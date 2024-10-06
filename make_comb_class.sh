#!/usr/bin/env bash

cd /home/deva/offline_materials/bpc

# Convert all PDF files with "Key" in their names to text files:
for file in *Key*.pdf; do pdftotext "$file" "${file%.pdf}.txt"; done

# Combine the text files into one using the cat command:
cat *Key*.txt > "../ipc/bpc Key combined.txt"

echo "BPC combined"

# Remove all the individual text files
rm *Key*.txt

cd /home/deva/offline_materials/ipc

# Convert all PDF files with "Key" in their names to text files:
for file in *Key*.pdf; do pdftotext "$file" "${file%.pdf}.txt"; done

# Combine the text files into one using the cat command:
cat *Key*.txt > "/home/deva/Documents/pali_resources/pāli-course/class_combined.txt"

echo "BPC + IPC combined"

# Remove all variations of quotations from the combined text file
cd /home/deva/Documents/dps/utilities

poetry run python clean_text.py "/home/deva/Documents/pali_resources/pāli-course/class_combined.txt"
