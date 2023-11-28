#!/bin/bash

# 1. File Type
echo "File Type:"
file AMZN_data_1999_2022.csv

# 2. MIME File Type
echo -e "\nMIME File Type:"
file -i AMZN_data_1999_2022.csv

# 3. Number of Lines
echo -e "\nNumber of Lines:"
wc -l AMZN_data_1999_2022.csv

# 4. Column Names
echo -e "\nColumn Names:"
head -1 AMZN_data_1999_2022.csv

# 5. Count Non-Null Entries
echo -e "\nCount Non-Null Entries:"
awk -F, '{if (NF == 7) print}' AMZN_data_1999_2022.csv | wc -l

# 6. Maximum Volume
echo -e "\nMaximum Volume:"
cut -d, -f7 AMZN_data_1999_2022.csv | sort -nr | head -1

# 7. Minimum Volume
echo -e "\nMinimum Volume:"
cut -d, -f7 AMZN_data_1999_2022.csv | sort -n | head -2

# 8. Minimum Low Price
echo -e "\nMinimum Low Price:"
cut -d, -f4 AMZN_data_1999_2022.csv | sort -n | head -2

# 9. Maximum High Price
echo -e "\nMaximum High Price:"
cut -d, -f3 AMZN_data_1999_2022.csv | sort -nr | head -1
