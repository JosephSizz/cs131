#!/bin/bash

categories=("Music" "Entertainment" "Gaming" "Comedy")

mkdir -p "United States"



for category in "${categories[@]}"; do
	
	
	grep "${category}.*United States" "Global YouTube Statistics.csv"  > "United States/${category}.txt"

	category_num=$(wc -l "United States/${category}.txt" | cut -d ' ' -f 1)


	echo "${category}: $category_num" >> ws5.txt

	
done	


echo "count for each category" > ws5.txt
wc -l "United States/Gaming.txt" >> ws5.txt
wc -l "United States/Comedy.txt" >> ws5.txt

wc -l "United States/Entertainment.txt" >> ws5.txt

wc -l "United States/Music.txt" >> ws5.txt

