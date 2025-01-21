#!/bin/sh
echo "Getting date with python script 'get-time.py'"
currenttime=$(python get-time.py)
cuttime=$(echo $currenttime | cut -d. -f1)
echo "The date is: $cuttime"
echo "Setting date..."
date=$(sudo date -s"$cuttime")
echo "The date is: $date"
echo "Setting hwclock date..."
sudo hwclock --systohc
echo "Hardware clock date is: $(sudo hwclock)"
