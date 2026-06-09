#!/bin/bash
# 1. Accepts two arguments on the command line and assigns them to
#variables. The first argument should be your first name, and the second
#should be your last name.
# $1 stores the first argument and $2 stores the second argument received
PRIMER_NOMBRE=$1
APELLIDO=$2

# 2 and 3. Create the output.txt file and save the current date
# The format %d-%m-%Y complies with the bonus (DD-MM-YYYY)
# We use a single '>' to create the file (or overwrite it if it already exists).
date +"%d-%m-%Y" > output.txt
