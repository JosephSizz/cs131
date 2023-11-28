#!/bin/bash

# Define the input and output file paths
INPUT_FILE="./AMZN_data_1999_2022.csv"
OUTPUT_DIR="out"
OUTPUT_FILE="$OUTPUT_DIR/amazon_date_close.csv"

# Create the 'out' directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Extract the 'Date', 'Close', and 'Volume' columns and save them to a new file
awk -F, 'BEGIN {OFS=","} {print $1, $5, $7}' $INPUT_FILE > $OUTPUT_FILE
