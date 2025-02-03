# Bash Script Bug: File Processing Error Handling

This repository demonstrates a common bug in bash scripts that handle file processing.  The script uses `find` to locate files and a `while` loop to iterate. The issue is a lack of proper error handling; the script continues execution even if an error occurs while processing a single file. This can lead to incomplete or corrupted results.  The solution demonstrates how to correctly handle errors and terminate the script appropriately.

## Bug:

The `bug.sh` script illustrates the problematic code.  After a command fails (`some_command_that_might_fail`), the script should terminate, but it instead continues processing other files.