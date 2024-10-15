#!/usr/bin/env bash

log_file="heart_rate_log.txt"
read -p "Enter device name: " device_name
{
while true
do 
heart_rate_data="$(date +"%Y-%m-%d %H:%M:%S") $device_name $((RANDOM % 10 + 20))"
echo $heart_rate_data >> ./$log_file
sleep 1
done
} &

pid=$!

echo "proccess started with PID: $pid"
