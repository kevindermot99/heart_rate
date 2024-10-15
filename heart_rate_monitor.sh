#!/bin/bash

log_file="heart_rate_log.txt"

# Prompt for device name
read -p "Enter device name: " device_name

{
while true
do 
    # Generate the heart rate data with timestamp and device name
    heart_rate_data="$(date +"%Y-%m-%d %H:%M:%S") $device_name $((RANDOM % 10 + 20))"
    
    # Log the data into the log file
    echo $heart_rate_data >> ./$log_file
    
    # Wait for 1 second before next entry
    sleep 1
done
} &

# Capture the PID of the background process
pid=$!

# Display the PID to the user
echo "Process started with PID: $pid"
