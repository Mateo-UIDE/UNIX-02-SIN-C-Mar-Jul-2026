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