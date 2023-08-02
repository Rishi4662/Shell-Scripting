#!/bin/bash

################################

# Sript-Details - This script is created to organize different file into different folders
# Author - Rishi Raj
# Version - V1
# Date - 1/08/23

##############################

set -e
set -o pipefail

# Take Input Of Path From User

echo "Enter Path Where Your All Files Are Stored"
read source_directory_path

echo "Enter Path Where You Need To Create Folders"
read destination_directory_path

# Check If The Source Path Is Available And If Available Process Further

if [ -d "$source_directory_path" ] ; then
    # If Found Path Process Further
        echo "Found The Source Path"
        # Getting Inside of Source DIR
        cd $source_directory_path
        if [ -d "$destination_directory_path" ] ; then
            # Ceate Image Folder In Destination Directory Path
            mkdir $destination_directory_path/Image
            find $source_directory_path -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.ico" -o -iname "*.webp" \) -exec mv -t $destination_directory_path/Image {} +
            mkdir $destination_directory_path/Video
            find $source_directory_path -type f \(  -iname "*.mp4" -o -iname "*.avi" -o -iname "*.mkv" -o -iname "*.mov"  \) -exec mv -t $destination_directory_path/Video {} +
            mkdir $destination_directory_path/Audio
            find $source_directory_path -type f \(  -iname "*.mp3" -o -iname "*.wav" -o -iname "*.flac" \) -exec mv -t $destination_directory_path/Audio {} +
            mkdir $destination_directory_path/Text
            find $source_directory_path -type f \( -iname "*.txt" -o -iname "*.log" -o -iname "*.csv" -iname "*.md" \) -exec mv -t $destination_directory_path/Text {} +
            mkdir $destination_directory_path/Script
            find $source_directory_path -type f \( -iname "*.sh" -o -iname "*.py" -o -iname "*.pl" -o -iname "*.php" -o -iname "*.js" -o -iname "*.bash" \) -exec mv -t $destination_directory_path/Script {} +

            
        else
            mkdir -p $destination_directory_path/Image
            find $source_directory_path -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.ico" -o -iname "*.webp" \) -exec mv -t $destination_directory_path/Image {} +
            mkdir -p $destination_directory_path/Video
            find $source_directory_path -type f \(  -iname "*.mp4" -o -iname "*.avi" -o -iname "*.mkv" -o -iname "*.mov"  \) -exec mv -t $destination_directory_path/Video {} +
            mkdir -p $destination_directory_path/Audio
            find $source_directory_path -type f \(  -iname "*.mp3" -o -iname "*.wav" -o -iname "*.flac" \) -exec mv -t $destination_directory_path/Audio {} +
            mkdir -p $destination_directory_path/Text
            find $source_directory_path -type f \( -iname "*.txt" -o -iname "*.log" -o -iname "*.csv" -o -iname "*.md" \) -exec mv -t $destination_directory_path/Text {} +
            mkdir -p $destination_directory_path/Script
            find $source_directory_path -type f \( -iname "*.sh" -o -iname "*.py" -o -iname "*.pl" -o -iname "*.php" -o -iname "*.js" -o -iname "*.bash" \) -exec mv -t $destination_directory_path/Script {} +

        fi    
            
else
    echo "Wrong Source Path"

fi