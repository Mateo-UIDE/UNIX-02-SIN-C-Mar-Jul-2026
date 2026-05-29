#Displays the current user's ID and group information.
id
#Shows the name of the current user's primary group.
id -gn
#Creates an empty file named test_grupo_heredado.txt in the home directory.
touch ~/test_grupo_heredado.txt
#Displays detailed information about the file, including permissions and owner.
ls -la ~/test_grupo_heredado.txt
#Prints the current user's group name.
echo "Grupo actual: $(id -gn)"
#Creates an empty file named antes_de_newgrp.txt in the home directory.
touch ~/antes_de_newgrp.txt
#Shows detailed information about the file, including permissions and ownership.
ls -la ~/antes_de_newgrp.txt
#Updates the package list from the software repositories.
apt update
#Installs the latest available versions of installed packages.
apt upgrade
#Installs additional Linux utility tools and commands.
apt install util-linux-extra
#Shows the location of the newgrp command executable.
which newgrp  
#
touch ~/despues_de_newgrp.txt
ls -la ~/despues_de_newgrp.txt
#Displays the current shell process ID (PID).
echo $$
#Closes the current shell session.
exit
echo $$