
![image](https://github.com/ChrisSaturn/LinuxFromNoob8.2/blob/master/screenshots/noob-linux.png)

# Linux From Noob

Linux From Noob is a source based linux distribution based on linux from scratch. You build the OS with a set of bash scripts, and it creates a iso file that you can install to your computer.


### Facebook Group && website

https://www.facebook.com/groups/linuxfromnoob/

https://anarchy-linux.org/linux-from-noob/         ### website currently being developed

### GPL-V3   not responsible for loss of data, machine damage, or anything else. no warrenty. you know how it goes

### Getting Started

It is suggested to use arch linux, you can aquire all the needed dependencies with this command:

pacman -S base-devel linux-headers xorriso bc cpio gzip wget

### important do not run strip.sh

unless you logout of chroot and run ./chroot-strip.sh 

you would do this after the system is built / not tools


### 1: Build LFS tools

instructions to build the tools needed to build the OS is pretty straight forward. Change into the build tools directory and run build_tools script or run them individualy.

cd 01_build_tools

./build_tools.sh

### 2: Copying Scripts

you can copy the scripts needed to build the system now.

./copyscripts.sh

### 3: Chroot into the tools environment created earier

./chroot

### 4: Build the Base System

Now it is time to build the base system for our linux OS. Run the build all script or run them individualy like before.

cd 02_build_system

./build_system.sh

### Important Set password to login, auto login comming soon
type:

passwd
it is suggested to use the password "toor" / the word root backward
this seems to be the standard for booting linux distro's but not required.

When done press CTR-D or type exit to leave chroot

### Stripping
important logout of chroot and chroot again with ./chroot-strip.sh

run ./strip.sh

### 5: Preparing to Build the iso File

./prepare-iso.sh

### 6: Creating the iso file

./generate-iso.sh

### 7: Creating a bootable usb 

Its time to create a bootable usb with the newly generated iso file, there are many ways to do this like with programs like unetbootin, and others. I use the command dd, it is more risky because if you dont point to the usb connected to your computer it could wipe your OS or other important data. To create a bootable usb with the command dd, it will look like this, just replace the "of=/dev/sdx" with the name your computer gives your usb device when plugged in.

dd if=linuxfromnoob.iso of=/dev/sdx status=progress

### 8: Rebooting and booting from usb

right now it can only boot in legacy mode. this means if your computer is in UEFI mode you need to change it to legacy or both.

choose to boot from usb

### another important #### the init script
the init script that mounts the virtual file systems is borrowed from Minimal linux live project 
and has not been edited yet for Linux From Noob.
it will boot and say welcome to Minimal linux live and stop booting
it will say "there is a serious bug" but its not true
just press enter a few times untill it finishes booting
you will then see systemd start and be left at a nooblinux login

enter password set earier and your in
you can cd /build_system and run ./test-gcc.sh




#### ToDo LIST
fix initscript
get internet network working
optional auto login

you can follow my progress to build the x window system here (not done yet)
https://github.com/ChrisSaturn/noob-x-scripts

more to come soon

### Acknowledgments

linux from scratch 
and 
minimal linux live

### Lead developer Chris Saturn


