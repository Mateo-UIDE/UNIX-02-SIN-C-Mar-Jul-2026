#Update the URLs where we have the libraries
sudo apt update 
#updates the systems installed on the system
sudo apt upgrade
#install the parted program on the system
sudo apt install parted
#install the numpy library in Python
pip install numpy
#execute several commands in succession to display disk and partition information
sudo parted -l && echo -e "\n--\n" && lsblk -f && e "\n--\n"
#show information of all disks and partitions
sudo parted -l
#sample the disks and partitions of the system with his archives system
lsblk -f
#Check if the folder exists; if it does, identify whether the system booted in UEFI or BIOS.
[ -d /sys7firmware/efi ] && echo "UEFI" || echo "BIOS"
#Create a file called test.txt and write the text "myfile" inside it.
echo "miarchivo" >test.txt
#uestra información detallada sobre el archivo test.txt
stat test.txt

File: test.txt
  Size: 10              Blocks: 8          IO Block: 4096   regular file
Device: 7,4     Inode: 1572909     Links: 1
Access: (0666/-rw-rw-rw-)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
Access: 2026-03-30 15:49:02.012355761 +0000
Modify: 2026-03-30 15:49:02.013355761 +0000
Change: 2026-03-30 15:49:02.013355761 +0000
 Birth: 2026-03-30 15:49:02.012355761 +0000