#!/bin/bash
count=0
for file in *; do
    if [ -f "$file" ]; then
        extension="${file##*.}"
        new_name="${count}.${extension}"
        mv "$file" "$new_name"
        ((++count))
    fi
done
