#!/bin/bash

# ============================================
# Script Name: check_hosts_with_IP.sh
# Description:
#   This script checks which hosts from a list
#   are currently online using nmap.
#
#   Alternative method (commented):
#   You can use ping instead of nmap if desired.
#
# Usage:
#   1. Create a file named 'hostlist.txt'
#      containing one IP address or hostname per line.
#   2. Run the script:
#        ./check_hosts_with_IP.sh


# ============================================

# --- Variables ---
hosts=$(cat hostlist.txt)

# --- Loop through each host in the list ---
for host in $hosts
do
    # Use nmap to check if host is up
    # (You can also use ping instead — see below)
    if nmap -sn "$host" | grep "1 host up" > /dev/null 2>&1; 

# You can use ping Instead of nmap ->  if ping -c 1 -W 1 "$host" > /dev/null 2>&1; 

then
        echo "$host is online"
    else
        echo "$host is offline"
    fi
done
