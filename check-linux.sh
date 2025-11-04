#!/bin/bash
# ============================================
# Script name: check-linux.sh
# Description:
#   Checks whether the current system is running Linux.
#   If yes → exit code 0
#   If not → exit code 1
# ============================================

# Get the system name using 'uname'
os=$(uname)

# Check if the result is "Linux"
if [[ $os == "Linux" ]]
then
    # System is Linux
    echo "This system is running Linux."
    exit 0
else
    # System is not Linux
    echo "This system is NOT running Linux."
    exit 1
fi
