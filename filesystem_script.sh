#change directory to dev directory
cd /dev
#list archivies and directories
ls
#change directory to proc directory
cd /proc
#list process on proc directory
ls
#shows cpu information
cat cpuinfo
#leads to the root of the file system
cd /
#show directory content
ls
#change directory tobin directory
cd /bin
#show directory content
ls
#change directory to direction
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026
#convert your code written in C language into a program that the computer can run
gcc saludo.c -o saludo_bin
#move archive saludo_bin to bin directory with sudo help
sudo mv saludo_bin /bin
#chane diectory to home directory
cd /home
#verify archive can run
saludo_bin
#PrintWorkDirectory
pwd
#add a special symbol to the end of each name
ls -F
#show inodo number
ls -i
#create the archive with text
echo "Hola mundo" > test.txt
#show the message was i writting before
cat test.txt
#View the status of files as they are being saved in Linux
stat test.txt