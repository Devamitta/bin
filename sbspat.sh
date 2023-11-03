#!/usr/bin/env bash

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
date

cd "/home/deva/Documents/sasanarakkha/patimokkha-repo/galduwa-patimokkha"
make pdf

make azw3

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
date
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

cd "build/"
cp -f "Galduwa Bhikkhupātimokkha.azw3" "/home/deva/Documents/Docs/SBS/pātimokkha/Galduwa Bhikkhupātimokkha.azw3"
cp -f "Galduwa Bhikkhupātimokkha.epub" "/home/deva/Documents/Docs/SBS/pātimokkha/Galduwa Bhikkhupātimokkha.epub"
cp -f "Galduwa Bhikkhupātimokkha.pdf" "/home/deva/Documents/Docs/SBS/pātimokkha/Galduwa Bhikkhupātimokkha.pdf"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
date
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

cd "/home/deva/Documents/sasanarakkha/patimokkha-repo/nanatusita-patimokkha"
make pdf

make azw3

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
date
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

cd "build/"
cp -f "Ñāṇatusita Bhikkhupātimokkha.azw3" "/home/deva/Documents/Docs/SBS/pātimokkha/Ñāṇatusita Bhikkhupātimokkha.azw3"
cp -f "Ñāṇatusita Bhikkhupātimokkha.epub" "/home/deva/Documents/Docs/SBS/pātimokkha/Ñāṇatusita Bhikkhupātimokkha.epub"
cp -f "Ñāṇatusita Bhikkhupātimokkha.pdf" "/home/deva/Documents/Docs/SBS/pātimokkha/Ñāṇatusita Bhikkhupātimokkha.pdf"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
date
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

cd "/home/deva/Documents/sasanarakkha/patimokkha-repo/chattha-sangayana-patimokkha"
make pdf

make azw3

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
date
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

cd "build/"
cp -f "Chaṭṭha Saṅgāyana Bhikkhupātimokkha.azw3" "/home/deva/Documents/Docs/SBS/pātimokkha/Chaṭṭha Saṅgāyana Bhikkhupātimokkha.azw3"
cp -f "Chaṭṭha Saṅgāyana Bhikkhupātimokkha.epub" "/home/deva/Documents/Docs/SBS/pātimokkha/Chaṭṭha Saṅgāyana Bhikkhupātimokkha.epub"
cp -f "Chaṭṭha Saṅgāyana Bhikkhupātimokkha.pdf" "/home/deva/Documents/Docs/SBS/pātimokkha/Chaṭṭha Saṅgāyana Bhikkhupātimokkha.pdf"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
date
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

cd "/home/deva/Documents/sasanarakkha/patimokkha-repo/thai-dhammayut-patimokkha"
make pdf

make azw3

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
date
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

cd "build/"
cp -f "Thai Dhammayut Bhikkhupātimokkha.azw3" "/home/deva/Documents/Docs/SBS/pātimokkha/Thai Dhammayut Bhikkhupātimokkha.azw3"
cp -f "Thai Dhammayut Bhikkhupātimokkha.epub" "/home/deva/Documents/Docs/SBS/pātimokkha/Thai Dhammayut Bhikkhupātimokkha.epub"
cp -f "Thai Dhammayut Bhikkhupātimokkha.pdf" "/home/deva/Documents/Docs/SBS/pātimokkha/Thai Dhammayut Bhikkhupātimokkha.pdf"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
date
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

echo "job is done, look in folder /home/deva/Documents/Docs/SBS/pātimokkha"