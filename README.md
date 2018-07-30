![alt text](https://github.com/ChrisSaturn/Source-Linux/blob/master/screenshots/linux-from-source.png)

## Facebook group for discussion and everything else

[Linux From Source Code](https://www.facebook.com/groups/linuxfromsourcecode/)

## These are bash scripts to build Linux From Scratch and Cross Linux From Scratch.

 This is a project of mine to create a linux Distro based on LFS and CLFS, The name for that distro right now is Source Linux.
 Just make it clear so far i have focased on all these scripts being run as root, it confuses me even on a normal distro
 fighting permissions and stuff. i did this to make things as simple as possible and untill a better idea arises 
 this should be the way these scripts are executed. my approch to build LFS and CLFS is simple, pretty much build tools, 
 copy the scripts, chroot, and start building the system, i do all my testing on bare metal and root like i said before.
 
 Important after building the system, its critical to exit chroot and chroot-strip.sh to strip the system correctly.
 Otherwise you will end up with kernel panics when booting the iso.

## Progress Report

 At this moment the following features are good and funtional as far as i know and tested.

1: source linux build_tools = the tools all build correctly with a sucessful chroot

2: cross x86_64 mutilib build_cross_tools and build_tools are funtional and sucessfull chroot.

( note ) I try and keep everything as up to date as i can, with the exeption of some packages in the cross-LFS section
 because of particular patches to make the cross compiler work. untill we modify these patches to work with newer package 
 versions, the main tool chain should stay the same. gcc, glibc ,binutils and anything else that may have a particular patch.
 
## The ToDo List

This is my plan as to start making progress with source linux, there has been some time wasted because of problems 
compiling systemd. I have commited myself to forking systemd features with the traditional configure, make ,make install method

1: write scripts to build the LFS system and the cross LFS system.

2: compile the kernel with a universal config for most machines. so wifi and other stuff works.

3: update and finish scripts to build x_windows, x_libraries, and write scripts for a DE.

( note ) my plan for this distro right now for a DE is openbox to be light on RAM usage and xfce4 tools because i've found 
them to be the best. ( i love xfce4-terminal ).


## Instructions 

Like i said i tryed to be as simple as possible with these scripts and run everything as root.

Pick a set of tools for the system your going to build, either cross-x86_64-mutilib or normal.

## Build tools

change into the build_tools directory and run build_tools.sh to build all tools at once or run them individualy 0 and upwards in order.
( note ) if you choose to build cross-x86_64-multilib, you must build cross-tools first before tools. then

## Copy scripts

since the problems with systemd, ive decided to dump all scripts for building the system so untill i update with scripts to
build the main system.

you would normally run the copyscripts.sh

## Chroot

This is the part to chroot into the new LFS environment we built with tools to start compiling the system.

## Build the main system

this is the part you change into the build_system directory and run build_system.sh or run all scripts one by one from 0 upwards.

## Exit chroot and prepare to strip

its time to exit chroot and run the umount scripts more than once to ensure that everything is un mounted.
exit chroot and run the umount.sh 2 or 3 times ( wont hurt )

## Chroot with special chroot command to strip

run the chroot-strip.sh

change into the build_system directory and run the strip script.
run strip.sh

## exit chroot again and un mount, prepare to create iso.

exit the chroot and run the un mount script like before 2 or 3 times.

at this time i normally start creating the iso to boot and test.
run the prepare-iso.sh to create the initramfs and structure the contents of future iso file.

note the bigger the system is the longer it will take in these last steps. 

when that is done you can run the generate-iso.sh script to create the iso file with xorriso.

And finially you can create a bootable USB drive with the new iso file and boot up to test.


## Closing comments

Lead Developer = Chris Saturn

comment: 
I promise to get these scripts and the main LFS/CLFS system up running as soon as possible.
there has been to much time and confusion with systemd and i want to make up for the time.
like i said before i kinda have a resentment against the new way systemd is compiled and im commited to forking 
systemd back to the traditional  configure, make, make install method.
