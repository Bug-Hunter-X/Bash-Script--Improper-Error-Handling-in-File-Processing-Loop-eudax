#!/bin/bash

# This script attempts to process files in a directory, but it has a subtle bug.

find . -type f -print0 | while IFS= read -r -d $'
0' file; do
  # Process each file here
  echo "Processing: $file"
  # ... some commands to process the file ...
  # Assume this could fail and exit with a non-zero status
  some_command_that_might_fail $file
  if [[ $? -ne 0 ]]; then
    echo "Error processing $file"
    # The bug is that the script continues processing other files even after an error
    # ...it should exit here to avoid further processing after an error...
  fi
  echo "Done processing $file"
done