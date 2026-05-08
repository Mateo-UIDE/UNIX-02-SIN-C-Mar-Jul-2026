#Prints the UID (User ID), GID (Group ID), and the Groups the current user belongs to.
id
#Lists all the security groups associated with the current user session.
groups
#Displays the content of the system file that contains basic information for every user account on the Linux system.
cat /etc/passwd
#Reads the user account file and displays only the first 10 lines.
cat /etc/passwd | head -10
#The archive and directory inherit UID and GID
touch test.txt
ls -la