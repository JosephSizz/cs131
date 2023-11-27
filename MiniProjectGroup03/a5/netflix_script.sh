#!/bin/bash


output_file="scriptINFONetflix.txt"

# Count entries in the first column

echo "Total entries in the first column:" >> "$output_file"

awk -F',' 'NR>1 {print $1}' netflix_data_raw.cvc | wc -l >> "$output_file"

# Count occurrences of each type in the second column


echo "Count of each type in the second column:" >> "$output_file"
awk -F',' '{print $2}' netflix_data_raw.cvc | sort | uniq -c >> "$output_file"



# Print the header line
echo "Header line:" >> "$output_file"


head -n 1 netflix_data_raw.cvc >> "$output_file"


echo "Results written to $output_file"


echo "The year with the most movie releases:" >> scriptINFONetflix.txt

awk -F',' 'NR>1 {print $8}' netflix_data_raw.cvc | sort | uniq -c | sort -nr | head -n 1 >> scriptINFONetflix.txt

echo '"Number of TV-MA shows:"' >> scriptINFONetflix.txt
grep -c "TV-MA" netflix_data_raw.cvc >> scriptINFONetflix.txt

echo '"Number of TV-14 shows:"' >> scriptINFONetflix.txt
grep -c "TV-14" netflix_data_raw.cvc >> scriptINFONetflix.txt


echo '"Most director used:"'


awk -F',' 'NR>1 {print $4}' netflix_data_raw.cvc | sort | uniq -c | sort -nr | head -n 2 >> scriptINFONetflix.txt
