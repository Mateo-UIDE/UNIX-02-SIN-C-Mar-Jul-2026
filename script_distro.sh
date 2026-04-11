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
#creates a new directory called /boot-files with administrator permissions, allowing storage of system or boot-related files in the GitHub Codespaces terminal.
    sudo mkdir /boot-files 
#sudo cp arch/x86/boot/bzImage /boot-files/
##copies the compiled Linux kernel image (bzImage) into the /boot-files directory using administrator permissions in the GitHub Codespaces terminal.
#cd ..
##moves one directory up from the current location, allowing the user to exit the Linux folder
    sudo cp arch/x86/boot/bzImage /boot-files/
    cd ..

#git clone --depth 1 https://git.busybox.net/busybox
##clones a shallow copy of the BusyBox repository (only the latest commit), making the download faster and lighter in the GitHub Codespaces terminal.
#cd busybox
##changes the current directory to the BusyBox folder, allowing the user to work inside that project.
    git clone --depth 1 https://git.busybox.net/busybox 
    cd busybox 
#opens an interactive configuration menu that allows the user to customize BusyBox build options before compiling it in the GitHub Codespaces terminal.
    make menuconfig 
#compiles BusyBox using 2 parallel jobs, allowing faster build execution by using multiple CPU cores in the GitHub Codespaces terminal.
    make -j 2 
#creates a new directory called /boot-files/initramfs with administrator permissions, preparing a location for initramfs files in the GitHub Codespaces terminal.
    sudo mkdir /boot-files/initramfs 
#installs BusyBox into the /boot-files/initramfs directory using administrator permissions, placing the compiled binaries and files needed for the initramfs in the GitHub Codespaces terminal.
    sudo make CONFIG_PREFIX=/boot-files/initramfs install 

#changes the current directory to /boot-files/initramfs, allowing the user to work inside the initramfs files location in the GitHub Codespaces terminal.
    cd /boot-files/initramfs    
#opens (or creates) a file named init in the Vim editor with administrator permissions, allowing the user to edit the init script in the GitHub Codespaces terminal.
    sudo vi init 
#defines a simple init script where the system uses /bin/sh as the interpreter and then starts a shell, allowing direct command execution when the system boots in the GitHub Codespaces terminal.
    #!/bin/sh 
    /bin/sh 
#removes the file named linuxrc with administrator permissions, cleaning up unnecessary or conflicting init files in the GitHub Codespaces terminal.
    sudo rm linuxrc 
#adds execute permissions to the init file, allowing it to run as a script during system startup in the GitHub Codespaces terminal.
    sudo chmod +x init 
#sudo find . | cpio -o -H newc > ../init.cpio
##packages all files in the current directory into a cpio archive using the newc format, creating an initramfs file (init.cpio) in the parent directory in the GitHub Codespaces terminal.
#cd ..
##moves one directory up from the current location, allowing the user to exit the initramfs folder.
    sudo find . | cpio -o -H newc > ../init.cpio 
    cd ..

#switches to the root user with full administrator privileges, allowing unrestricted system control in the GitHub Codespaces terminal.
    sudo su 
#creates a 50 MB file named boot filled with zeros, using it as a blank disk image in the GitHub Codespaces terminal.
    dd if=/dev/zero of=boot bs=1M count=50 
#formats the file boot with a FAT filesystem, preparing it to be used as a bootable disk image in the GitHub Codespaces terminal.
    mkfs -t fat boot
#installs the Syslinux bootloader onto the boot disk image, making it bootable in the GitHub Codespaces terminal.
    syslinux boot 
#mkdir m
##creates a directory named m, which will be used as a mount point in the GitHub Codespaces terminal.
#mount boot m
##mounts the boot disk image to the m directory, allowing access to its filesystem.
#cp bzImage init.cpio m
##copies the kernel image (bzImage) and initramfs file (init.cpio) into the mounted disk image.
#umount m
##unmounts the m directory, safely saving changes to the boot disk image.
    mkdir m 
    mount boot m 
    cp bzImage init.cpio m 
    umount m 

#launches a virtual machine using QEMU, booting the Linux kernel (bzImage) with the initramfs (init.cpio) and disk image (boot), displaying output in the terminal without a graphical interface in the GitHub Codespaces terminal.
    qemu-system-x86_64 -nographic -append "console=ttyS0" -kernel bzImage -initrd init.cpio -drive file=boot,format=raw
