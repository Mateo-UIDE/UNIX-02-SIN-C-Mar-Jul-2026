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
#Show all groups of the system and filter the 10first groups
cat /etc/group | head -10
#Displays the names of all groups the current user belongs to.
groups
#Show UID and Gid of the actual user.
id -u
id -g
id -G
#Creates a new security group named "desarrolladores" on the system.
groupadd desarrolladores
#Creates a new group named "operaciones" with a specific numeric ID (GID) of 2000.
groupadd -g 2000 operaciones 
#Creates a new system group named "servicios_web."
groupadd --system servicios_web
#Searches for and displays lines containing specific group names within the system group file.
grep -E "desarroladores|operaciones|servicios_web" /etc/group
#Searches for specific configuration variables that define the range of Group IDs (GIDs) allowed on the system.
grep -E "GID_MIN|GID_MAX|SYS_GID" /etc/login.defs
#Create groups with addgroup
addgroup diseno
addgroup --gid 21000 marketing
addgroup --system cache_web
#Filters the system group file to find and display the entries for the specific groups "diseno," "marketing," and "cache_web."
grep -E "diseno|marketing|cache_web" /etc/group