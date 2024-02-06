#!/usr/bin/env bash

cd /home/deva/temp/bpc

# Convert all PDF files with "Key" in their names to text files:
for file in *Key*.pdf; do pdftotext "$file" "${file%.pdf}.txt"; done

# Combine the text files into one using the cat command:
cat *Key*.txt > "../ipc/bpc Key combined.txt"

echo "BPC combined"

# Remove all the individual text files
rm *Key*.txt

cd /home/deva/temp/ipc

# Convert all PDF files with "Key" in their names to text files:
for file in *Key*.pdf; do pdftotext "$file" "${file%.pdf}.txt"; done

# Combine the text files into one using the cat command:
cat *Key*.txt > "/home/deva/Documents/pali_resources/pāli-course/class_combined.txt"

echo "BPC + IPC combined"

# Remove all the individual text files
rm *Key*.txt
