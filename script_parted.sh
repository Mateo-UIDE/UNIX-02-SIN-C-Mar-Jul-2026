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