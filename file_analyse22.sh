#!/bin/bash

print_image_metadata(){
  echo "Image Metadata"
  for each in "$1"/*.png "$1"/*.jpeg "$1"/*.jpg "$1"/*.gif "$1"/*.tiff "$1"/*.bmp; do
    echo "File: $each"
    exif "$each"
    echo "-------------------------------------"
  done
}

print_multimedia_metadata(){
  echo "Multimedia Metadata"
  for each in "$1"/*.mp4 "$1"/*.mp3 "$1"/*.mkv "$1"/*.wav "$1"/*.flac; do
    echo "File: $each"
    mediainfo "$each"
    echo "-------------------------------------"
  done
}

if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/directory"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Error: Directory does not exist."
  exit 1
fi

# Call
print_image_metadata "$1"
print_multimedia_metadata "$1"
## extracting ASCII
for each in "$1"/*
do
        if [ -f $each ]
        then
                 echo "File: $each"
                 strings "$each"
                 echo "-----------------------------------"
	fi
done
 echo "Analyzing Network Traffic (Ctrl+C to stop):"
 sudo  tcpdump -n -i any
