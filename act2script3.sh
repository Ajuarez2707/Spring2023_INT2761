#!/bin/bash

# Prompt the user to enter their name
read -p "Enter your name: " name

# Determine the current time and store it in a variable
current_time=$(date +%H)

# Greet the user appropriately based on the time of day
if [ "$current_time" -lt 12 ]; then
    echo "Good morning, $name!"
elif [ "$current_time" -lt 17 ]; then
    echo "Good afternoon, $name!"
else
    echo "Good evening, $name!"
fi

