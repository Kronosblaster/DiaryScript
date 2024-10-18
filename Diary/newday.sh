#!/bin/bash

# Get the current month and year
current_month=$(date +"%b")  # e.g., Oct
current_year=$(date +"%y")   # e.g., 24

# Get the current date formatted as "Month day,year"
current_date=$(date +"%B %d,%y-------------------------------")  # e.g., October 18,24-------------------------------

# Define the base folder for the current month and year (e.g., Oct24)
base_folder="$current_month$current_year"
pics_folder="$base_folder/pics"

# Function to create the folder structure and Log.txt file
create_structure() {
    # Create the base folder and pics folder
    mkdir -p "$pics_folder"

    # Define the path to Log.txt in the base folder (e.g., Oct24/Log.txt)
    log_file="$base_folder/Log.txt"
    
    # If Log.txt doesn't exist, create it; if it exists, append the date text
    if [[ ! -f "$log_file" ]]; then
        touch "$log_file"
        echo "$current_date" > "$log_file"
    else
        echo "$current_date" >> "$log_file"
    fi
}

# Run the function
create_structure

# Confirmation message
echo "Folder structure created successfully:"
tree "$base_folder"  # Display the structure using tree (for the current folder)

