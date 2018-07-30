###################################################################
# this file will install any missing dependencies on to your host arch linux distro
# important to run this as you could waste alot of time with missing dependency
###################################################################
. ./config.sh


check() {
# Check depends
        if [ ! -f /usr/bin/wget ]; then query="$query wget "; fi
        if [ ! -f /usr/bin/xorriso ]; then query+="libisoburn "; fi
        if [ ! -f /usr/bin/cpio ]; then query+="cpio "; fi

        if [ ! -z "$query" ]; then
                echo -en "Error: missing dependencies: ${query}\n > Install missing dependencies now and base-devel & linux-headers? [y/N]: "
                read -r input
		case $input in
                        y|Y)    sudo pacman -Sy $query base-devel linux-headers ;;
                        *)      echo "Error: missing depends, exiting." ; exit 1 ;;
                esac
        fi
}
check
