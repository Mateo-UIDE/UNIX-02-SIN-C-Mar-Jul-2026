cd clase
#relative route
/workspaces/UNIX-02-SIN-C-Mar-Jul-2026/clase
#absolute route
ls -lai
#shows the inodo
#l-list a=all i-inode
ls -l -a -i
#the same options but in a separate way

#The command stat . displays detailed information about the current directory, where the dot represents the folder you are currently in; 
#it shows the file type (directory), its size (usually 4096 bytes for folders), permissions (for example, 0777 means everyone can read, write, 
#and execute), the owner and group, a unique identifier called inode, the number of links, and timestamps indicating when it was last accessed, 
#modified, changed, and created, essentially providing all technical details about that folder.

stat .
#File: .
#Size: 4096            Blocks: 8          IO Block: 4096   directory
#Device: 7,4     Inode: 1573098     Links: 2
#Access: (0777/drwxrwxrwx)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
#Access: 2026-04-08 21:08:27.085512594 +0000
#Modify: 2026-04-08 21:08:27.084512594 +0000
#Change: 2026-04-08 21:08:27.084512594 +0000
#Birth: 2026-04-08 21:08:27.084512594 +0000

#change directory to home directory from any location of my operative system
cd
#change directory to home directory using absolute route
cd /home/codespace
#change directory to home directory using ~ shortcut
cd ~
#change directory to home directory uing rnviroment variable
cd $HOME
#displays the value of the BASH variable, showing information about the Bash shell you are using
echo $BASH
#Shows the value of the PATH variable, which is a list of directories where the system looks for executable programs when you run a command
echo $PATH