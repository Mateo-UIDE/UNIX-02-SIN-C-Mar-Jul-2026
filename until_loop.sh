#!/bin/bash
#Creates a variable named FILE and assigns the filename output.txt to it.
FILE="output.txt"
#Creates the file if it does not exist or updates its timestamp if it does.
touch "${FILE}"
#Starts a loop that continues until the file exists and contains data.
until [[ -s "${FILE}" ]]; do
#Prints a message indicating that the file is empty.
echo "${FILE} is empty..."
#Displays a message that the script will check the file again after 2 seconds.
echo "Checking again in 2 seconds..."
#Pauses the script for 2 seconds before checking the file again.
sleep 2
#Marks the end of the until loop.
done
#Prints a message indicating that the file now contains data.
echo "${FILE} appears to have some content in it!"