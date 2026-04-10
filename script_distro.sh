#updates the package list from repositories, allowing the system to know the latest available versions of software before installing or upgrading anything in the GitHub Codespaces terminal.
sudo apt update 
#installs multiple development tools and system packages automatically without asking for confirmation, providing everything needed to compile, edit, and run low-level software in the GitHub Codespaces terminal.
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86 

#git clone --depth 1 https://github.com/torvalds/linux.git
##It clones a shallow copy of the Linux repository (only the latest commit), making the download faster and lighter in the GitHub Codespaces terminal.
#cd linux
##It changes the current directory to the cloned Linux folder, allowing the user to work inside the project.
git clone --depth 1 https://github.com/torvalds/linux.git 
cd linux 
#opens an interactive configuration menu that allows the user to customize the Linux kernel build options before compiling it in the GitHub Codespaces terminal
make menuconfig 
#compiles the project using 2 parallel jobs, allowing faster build execution by using multiple CPU cores in the GitHub Codespaces terminal.
make -j 2 

