#!/bin/bash
PUBLISHER="No Starch Press"
print_name(){
local name
name="Black Hat Bash"
echo "${name} by ${PUBLISHER}"
}
print_name
echo "Variable ${name} will not be printed because it is a local variable."

#Difference between a local variable and a global variable?
#A local variable is declared inside a function and can only be used there. A global variable is declared outside functions and can be used throughout the program. The main difference is their scope (where they can be accessed).

#What are the particularities of bash function invocations?
#In Bash, a function is called by writing its name without parentheses, and arguments are passed separated by spaces and accessed using `$1`, `$2`, etc.
