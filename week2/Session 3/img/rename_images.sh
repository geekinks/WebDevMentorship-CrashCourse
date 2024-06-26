#!/bin/bash

# List of files to be renamed
files=("AdamsGeeky.png" "cor.png" "engineer.png" "google.png" "hard.jpg" "heroCover.png" "hero.png" "lead.png" "progremmer.png" "speek.png")

# Counter for new file names
counter=1

# Loop through each file and rename
for file in "${files[@]}"; do
    # Get the file extension
    extension="${file##*.}"
    
    # Create the new file name
    new_name="photo${counter}.${extension}"
    
    # Rename the file
    mv "$file" "$new_name"
    
    # Increment the counter
    ((counter++))
done
