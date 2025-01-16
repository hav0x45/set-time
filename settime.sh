#!/bin/sh
echo "Getting date with python script 'gettime.py'"
currenttime=$(python gettime.py)
cuttime=$(echo $currenttime | cut -d. -f1)
echo "The date is: $cuttime"
echo "Setting date..."
date=$(sudo date -s"$cuttime")
echo "The date is: $date"
echo "Setting hwclock date..."
sudo hwclock --systohc
echo "Hardware clock date: $(sudo hwclock)"
