#!/bin/bash 

# Prompt the user to enter their username 
read -p "Enter your username: " username

# Display the welcome message with the provided username
echo "hello, $username. Welcome to your Virtual Machine!"

# If the output needs to be redirected to a file
echo "Hello, $username. Welcome to your Virtual Machine!" >> login.txt
