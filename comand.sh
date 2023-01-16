#!/bin/bash

# Display current memory usage
echo "Current memory usage: $(free -m | awk 'NR==2{printf "%.2f%%\t\t", $3*100/$2 }')"

# Display total and used RAM memory
echo "RAM memory: $(free -m | awk 'NR==2{printf "%s/%s MB\n", $3,$2 }')"

# Display current time and month of the date
echo "Time: $(date +"%T")"
echo "Month: $(date +"%B")"
