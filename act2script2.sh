#!/bin/bash

#Promt the user to enter their first and last name
read -p "Enter your first and last name: " name

#Prompt the user to enter their student ID
read -p "Enter your student ID: " id

#check if the provided student ID matches the required values
if [ "$id" = "1234" ]; then
	echo "Welcome $name, welcome to your virtual machine!"
else
	echo "Error, invald StudentID: "$id". Please try again."
fi

