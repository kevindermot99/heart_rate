#!/usr/bin/env bash

log_file="heart_rate_log.txt"

if [ -f "$log_file" ]; then
  timestamp=$(date +"%Y%m%d_%H%M%S")
  new_log_file="${log_file}_${timestamp}"
  mv "$log_file" "$new_log_file"
  echo "Log file archived as: $new_log_file"
else
    echo "Log file $log_file not found. No action taken."
fi
