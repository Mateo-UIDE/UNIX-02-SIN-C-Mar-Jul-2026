#Lists the files and directories in the current folder.
ls
#Lists the files and folders inside the Documents directory.
ls Documents
#Runs the aptitude package manager with the argument “moo”; however, “moo” is not a standard command, so it would likely result in an error or no valid action.
aptitude moon
#Lists files and directories in long format, showing details like permissions, owner, size, and modification date.
ls -l
#Lists files and directories in reverse order.
ls -r
#Lists files and directories in long format, sorted in reverse order.
ls -l -r
ls -lr
ls -rl
#Runs aptitude with increased verbosity (-v -v/-vv) and the moo command, which is a playful Easter egg that displays a message.
aptitude -v -v moo
aptitude -vv moo
#Shows the current working directory (your current location in the file system).
pwd
#Changes the current directory to the Documents folder.
cd Documents
#Changes the current directory to your home directory.
cd
#Changes the current directory to the root directory (the top level of the file system).
cd /
#Changes the current directory to the /home/sysadmin folder.
cd /home/sysadmin 
#Lists the contents of the /var/log/ directory in long format, showing detailed information about each file.
ls -l /var/log/  
#Lists files in /var/log in long format, sorted by modification time (newest first).
ls -lt /var/log
#Lists files in /var/log in long format, showing their sizes and sorted by modification time (newest first).
ls -lt -s /var/log 
#Lists files in /var/log in long format, sorted by size in reverse order (smallest first).
ls -lSr /var/log
#Lists files and directories in /var/log in reverse order.
ls -r /var/log
#Switches to the root (superuser) account and loads its full environment.
su -
su -l
su --login
#Runs a fun program that shows a steam locomotive animation in the terminal (often installed as a joke alternative to ls).
sl
#Runs the sl command (steam locomotive animation) with superuser privileges.
sudo sl
#Moves to the Documents folder in your home directory.
cd ~/Documents
#Shows detailed info about hello.sh.
ls -l hello.sh
#Executes the hello.sh script.
./hello.sh
#Gives execute permission to the file owner.
chmod u+x hello.sh
#Changes the file owner to root.
sudo chown root hello.sh:
#Runs the script with superuser privileges.
sudo ./hello.sh
#Displays the contents of animals.txt.
cat animals.txt
#Shows contents of alpha.txt.
cat alpha.txt
#Shows the first 10 lines of alpha.txt.
head alpha.txt
#Shows the last 10 lines.
tail alpha.txt
#Shows the first 5 lines.
head -n 5 alpha.txt
#Shows the last 5 lines.
tail -n 5 alpha.txt
#Copies passwd file to current directory.
cp /etc/passwd .
#Creates a 50MB file filled with zeros.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
#Moves people.csv to Work folder.
mv people.csv Work
#Moves multiple files to School.
mv numbers.txt letters.txt alpha.txt School
#Renames animals.txt to zoo.txt.
mv animals.txt zoo.txt
#Deletes linux.txt.
rm linux.txt
#Tries to delete Work (fails if it's a directory).
rm Work
#Deletes Work directory and its contents.
rm -r Work
#Searches for “sysadmin” in passwd.
grep sysadmin passwd
#Searches for “root”.
grep 'root' passwd
#Finds lines starting with “root”.
grep '^root' /etc/passwd
#Finds lines ending with “r”.
grep 'r$' alpha-first.txt
#Matches pattern (r + any 2 chars + f).
grep 'r..f' red.txt
#Matches lines with at least 5 characters.
grep '.....' red.txt
#Matches text starting with r and ending with t.
grep 'r.*t' /etc/passwd
#Finds lines with digits.
grep '[0-9]' profile.txt
#Finds lines with non-digits.
grep '[^0-9]' profile.txt
#Searches for a literal dot.
grep '[.]' profile.txt
#Matches r + zero/more e + d.
grep 're*d' red.txt
#r followed by o/e (any amount) then d.
grep 'r[oe]*d' red.txt
#Matches zero or more z (almost every line).
grep 'z*' red.txt
#Matches zero or more e (almost every line).
grep 'e*' red.txt
#Shows current running processes.
ps
#Shows all processes.
ps -e
#Shows detailed full-format process list.
ps -ef
#Updates package lists.
sudo apt-get update
#Searches for packages related to “cow”.
apt-cache search cow
#Installs cowsay.
sudo apt-get install cowsay
#Displays a message with a cow.
cowsay 'NDG Linux Unhatched'
#Upgrades installed packages.
sudo apt-get upgrade
#Removes cowsay completely.
sudo apt-get purge cowsay
#Changes current user password.
passwd
#Switches to root user.
su root
#Displays food.txt.
cat food.txt
#Prints “Hello” to terminal.
echo "Hello"
#Appends text to file.
echo "This food is good." >> newfile1.txt:
#Opens file in vi editor.
vi newfile1.txt