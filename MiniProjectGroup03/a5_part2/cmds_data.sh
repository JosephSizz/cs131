#!/bin/bash

# Display the current directory
echo "Current Directory: $(pwd)"

# Define the input and output file paths
INPUT_FILE='./raw_data_stock.csv'
OUTPUT_FILE='./amazon-stock-date-close.csv'

# Check if the input file exists
if [ -f "$INPUT_FILE" ]; then
    echo "Input file found: $INPUT_FILE"
    echo "date,close" > "$OUTPUT_FILE"
    awk -F',' 'BEGIN {OFS=","} {print $1, $5}' "$INPUT_FILE" >> "$OUTPUT_FILE"
else
    echo "Error: Input file not found - $INPUT_FILE"
fi
