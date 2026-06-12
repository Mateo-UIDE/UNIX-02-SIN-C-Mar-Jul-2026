#!/bin/bash
USER_INPUT="${1}"
#We begin with an if statement that checks whether the variable
#USER_INPUT is null
if [[ -z "${USER_INPUT}" ]]; then
echo "You must provide an argument!"
exit 1
fi
#This allows us to exit the script early by using exit
#1 if we receive no command line arguments from the user. We then begin a
#second if condition that uses the file test operator to check whether the
#input is a file
if [[ -f "${USER_INPUT}" ]]; then
echo "${USER_INPUT} is a file."
#Below this condition, we use elif to test whether the
#argument is a directory 
elif [[ -d "${USER_INPUT}" ]]; then
echo "${USER_INPUT} is a directory."
else 
#This condition won’t be tested unless the file
#test fails. If neither of these conditions is true, the script responds that the
#argument is neither a file nor a directory
echo "${USER_INPUT} is not a file or a directory."
fi