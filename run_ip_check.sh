#!/bin/bash

# ============================================
# Script Name: run_ip_check.sh
# Description:
#   This script runs another host-checking script
#   (for example, check_hosts_with _IP.sh )
#   and creates a log file with the current date
#   and time in its filename.
#
#   It verifies whether the log file was created
#   successfully and returns the appropriate exit code.
#
# Usage:
#   ./run_ip_check.sh

# ============================================

# --- Create a timestamp (format: YYYYMMDD-HHMMSS) ---
timestamp=$(date '+%Y%m%d-%H%M%S')

# --- Run the IP check script and save output to logfile ---
./check_hosts_with _IP.sh > logfile-${timestamp}.txt


# --- Check if logfile was created ---
if [ -e logfile-${timestamp}.txt ];
then
    echo "Log file logfile-${timestamp}.txt has been created successfully."
    exit 0
else
    echo "Error: Log file was not created!"
    exit 1
fi
