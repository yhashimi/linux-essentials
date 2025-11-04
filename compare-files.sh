#!/bin/bash
# ============================================
# Script name: compare-files.sh
# Description:
#   Compares two files using their MD5 checksum.
#   If exactly two parameters are provided, it prints both checksums.
#   Otherwise, it shows an error message.
# ============================================

# Check if exactly 2 parameters are passed
count="$#"

if [[ $count -eq 2 ]]
then
    file1="$1"
    file2="$2"

    echo "Comparing $file1 with $file2...."
    echo ""

    # Show MD5 checksums for both files
    md5sum "$file1" "$file2"

    # Exit code 0: success
    exit 0
else
    echo "Error: This script requires exactly 2 parameters."
    echo "Example: bash compare-files.sh file1 file2"

    # Exit code 1: error
    exit 1
fi
