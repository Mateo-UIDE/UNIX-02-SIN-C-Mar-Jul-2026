
#command used in Unix/Linux systems.
ls -a
#lists all files and directories in the current folder, including hidden files.
ls --all
#displays file sizes in a human-readable format (like KB, MB, GB) instead of bytes.
ls -h
#lists all files (including hidden ones) in a detailed format, showing permissions, owner, size, and date, with sizes displayed in a human-readable way (KB, MB, GB).
ls -l -a -h
#shows a detailed list of all files (including hidden ones), with file sizes in a human-readable format (KB, MB, GB).
ls -l -ah
#shows all files (including hidden ones) in a detailed list, with sizes displayed in a human-readable format (KB, MB, GB).
ls -lah
#creates a directory named -rf.
mkdir -- -rf
#removes (deletes) a directory named -rf.
rmdir -- -rf
#displays a help message that explains how to use the ls command and shows all available options.
ls --help
#shows the full manual page for the ls command, including detailed explanations of all options and usage.
man ls
    #To navigate, start with the text /all, press (n) to go forward, press (N - shift + n) to go backward, and press (q) to exit.
#shows the full manual page for the git clone command, including all options and detailed usage information.
man git-clone
    #is used in git clone to create a shallow copy of a repository, downloading only the most recent commits up to the specified number.
    --depth <depth>
        Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless
        --no-single-branch is given to fetch the histories near the tips of all branches. If you want to clone submodules shallowly,
        also pass --shallow-submodules.

-rw-rw-rw-
||  |   |
||  |   |_ permissions for "others" -- read only
||  |_ permissions for "group" -- read and execute
||_ permissions for "user" -- read,write,execute
|_ tipe of archive: "-" normal archive,"d" directory,"l" simbolic link

#lists files and directories in a detailed format, showing permissions, owner, size, and modification date.
ls -l
#creates an empty file named script.sh if it does not exist, or updates its timestamp if it already exists.
touch script.sh
#gives execute permission to the file script.sh, allowing it to be run as a program.
chmod +x script.sh
#adds execute permission only for the file owner (user) on script.sh, allowing the owner to run it.
chmod u+x script.sh
#creates an empty file named secreto.txt if it does not exist, or updates its timestamp if it already exists.
touch secreto.txt
#removes read permission for others (users who are not the owner or in the group) from the file secreto.txt.
chmod o-r secreto.txt
#creates an empty file named privado if it does not exist, or updates its timestamp if it already exists.
touch privado
#gives the owner read and write permissions, and removes all permissions (read, write, execute) from group and others for the file privado.
chmod u+rw,go-rwx privado

#Error because the output redirection (>) is executed by the shell (your current terminal), not by the sudo command.
sudo echo "hola" >/etc/archivo_protegido
#sends the string "hola" to the tee utility with administrative privileges, which writes it to a protected system file. The redirection to /dev/null is used to hide the redundant output from the terminal.
echo "hola" | sudo tee /etc/archivo_protegido>/dev/null
#pipes the string "hola" into the tee utility, which is executed with root privileges. tee writes the input to the specified protected file and simultaneously displays the output in the terminal.
echo "hola" | sudo tee /etc/archivo_protegido
#invokes a new shell (sh) with administrative privileges to execute a specific string of commands. This allows the shell itself to handle the output redirection (>>), enabling the user to append text to a protected system file.
sudo sh -c 'echo "chao" >> /etc/archivo_protegido'
#enters temporarily to total superuser, for logout with "exit"
sudo -i
#prints the value of the $HOME environment variable to the terminal. This variable stores the absolute path to the current user's home directory
echo "$HOME"
#prints the literal string $HOME to the terminal. Unlike double quotes, single quotes prevent the shell from performing variable expansion, treating every character inside them as plain text.
echo '$HOME'
#creates a new file named hola.sh (or overwrites it if it already exists) and writes the string #!/bin/sh into it. This specific string is known as a shebang, which tells the operating system to use the Bourne shell to execute the script.
echo '#!/bin/sh' > hola.sh
#appends the text echo"Hola desde mi primer script" to the end of the file named hola.sh. By using the >> operator, the existing content of the file is preserved, and the new line is added at the bottom.
echo 'echo"Hola desde mi primer script"' >> hola.sh
#lists the details of the file hola.sh in "long format." It displays the file's permissions, owner, group, size, last modification date, and filename.
ls -l hola.sh
#modifies the file permissions of hola.sh to make it executable. The +x flag grants "execute" permissions to the user, group, and others, allowing the file to be run as a program or script.
chmod +x hola.sh
#reads the content of the file hola.sh and prints it to the standard output (your terminal screen). It is the most common way to quickly inspect the text inside a file without opening an editor.
cat hola.sh
#don't need sudo. Reading /etc is public.
ls /etc
#need sudo. /etc belongs to root and not leaves writing to normal users.
touch /etc/prueba.txt
#don't need sudo. ~is your own house.
mkdir ~/mi_carpeta
#need sudo.It install packages, touch system directories(/usr/bi, etc)
apt install cowsay
#create a file called prueba.txt
touch prueba.txt
#assign permissions for read an write (6) only for users.
chmod 600 prueba.txt
#assing permissions (7)read,write,execute for users,(5)read,execute for groups,(5)read,execute for others.
chmod 755 prueba.txt

#When we have a problem, we shouldn't rely solely on AI, since when we ask it for something specific, it doesn't have a definitive answer. This causes confusion for the programmer. That's why it's better to use the experience of others, using forums and other tools. With this, it's possible to solve many errors we might encounter.
#create a file called archivo1
touch archivo1
#make a directory called directory1
mkdir directorio1
#is used to install the ACL package on Linux.
sudo apt install acl
#change the owner of files/folders.
sudo chown -R $(whoami) .
#recursively removes ACLs (special permissions).
sudo setfacl -bnR .
#After updating and installing everything necessary, this time umask is working properly.
#defines which permissions are removed by default from new files and directories.
umask 027
    #The subtraction is done digit by digit; in the case of files, the subtraction starts from the number 666.
    #The subtraction is done digit by digit; in the case of directories, the subtraction starts from the number 777.
