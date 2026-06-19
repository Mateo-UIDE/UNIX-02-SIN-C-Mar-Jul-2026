#!/bin/bash
touch example_file1 example_file2 example_file3
grep "35.237.4.214" log.txt
grep "35.237.4.214\|13.66.139.0" log.txt
grep -e "35.237.4.214" -e "13.66.139.0" log.txt
ps | grep TTY
ps | grep tty
ps | grep -i tty
grep -v "35.237.4.214" log.txt
grep -o "35.237.4.214" log.txt
awk '{print $1}' log.txt
awk '{print $3}' log.txt
awk '{print $1,$2,$3}' log.txt
awk '{print $1,$NF}' log.txt
touch test.csv
echo "hola1,chao1" > test.csv
echo "hola2,chao2" >> test.csv
echo "hola3,chao3" >> test.csv
awk -F',' '{print $1}' test.csv
head log.txt
awk 'NR < 10' log.txt
#Searches log.txt and displays all lines containing the IP address 42.236.10.117.
grep "42.236.10.117" log.txt
#Prints the 7th column (field) of every line in log.txt.
awk '{print $7}' log.txt
#First finds all lines with the IP address 42.236.10.117, then prints the 7th column from those matching lines only.
grep "42.236.10.117" log.txt | awk '{print $7}'
sed 's/Mozilla/Godzilla/g' log.txt
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
sed 's/ //g' log.txt
sed '1d' log.txt
sed '5,7d' log.txt
sed -n '2,15 p' log.txt
sed -i '1d' log.txt