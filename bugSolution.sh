#!/bin/bash

# Improved script with proper error handling

find . -type f -print0 | while IFS= read -r -d $'
0' file; do
  echo "Processing: $file"
  # ... some commands to process the file ...
  some_command_that_might_fail $file
  if [[ $? -ne 0 ]]; then
    echo "Error processing $file. Exiting."
    exit 1
  fi
  echo "Done processing $file"
done