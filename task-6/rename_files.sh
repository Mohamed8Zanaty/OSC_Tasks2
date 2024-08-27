#!/bin/bash
directory="$1"

for file in $(find "$directory" -type f -name "*.txt"); do
  
  if [ -e "$file" ]; then
    
    base_name=$(basename "$file")
    dir_name=$(dirname "$file")
    
    new_name="${dir_name}/old_${base_name}"
    mv "$file" "$new_name"
  fi
done