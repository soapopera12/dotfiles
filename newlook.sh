#!/bin/bash

# Directory containing the images
IMAGE_DIR="$HOME/Documents/pix"

# Check if the directory exists
if [ ! -d "$IMAGE_DIR" ]; then
    echo "Error: Directory '$IMAGE_DIR' does not exist."
    exit 1
fi

# Randomly select an image
random_image=$(find "$IMAGE_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) 2>/dev/null | shuf -n 1)

# Check if any images were found
if [ -z "$random_image" ]; then
    echo "No image files found in '$IMAGE_DIR'."
    exit 1
fi

# Output the randomly selected image
# echo "Randomly selected image: $random_image"

# Set the randomly selected image as the dark mode desktop background
gsettings set org.gnome.desktop.background picture-uri-dark "file://$random_image"
echo "Desktop background updated to: $random_image"

