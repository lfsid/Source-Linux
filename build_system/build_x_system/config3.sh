######################################################
#
######################################################

export aa=$(pwd)
export src=/source
export SRC=/mnt/lfs/source

export XORG_PREFIX="/usr"

export XORG_CONFIG="--prefix=$XORG_PREFIX --sysconfdir=/etc \
    --localstatedir=/var --disable-static"

export LD_LIBRARY_PATH=$XORG_PREFIX/lib
export LD_LIBRARY_PATH=$XORG_PREFIX/usr/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$XORG_PREFIX/lib/pkgconfig
export PKG_CONFIG_PATH=$XORG_PREFIX/share/pkgconfig:$PKG_CONFIG_PATH
export PATH=$XORG_PREFIX/bin:$PATH
export LIBRARY_PATH=$XORG_PREFIX/lib
export C_INCLUDE_PATH=$XORG_PREFIX/include
export CPLUS_INCLUDE_PATH=$XORG_PREFIX/include
export ACLOCAL="aclocal -I $XORG_PREFIX/share/aclocal"


cat > /etc/profile.d/xorg.sh << EOF
export XORG_PREFIX="/usr"

export XORG_CONFIG="--prefix=$XORG_PREFIX --sysconfdir=/etc \
    --localstatedir=/var --disable-static"

export LD_LIBRARY_PATH=$XORG_PREFIX/lib
export LD_LIBRARY_PATH=$XORG_PREFIX/usr/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$XORG_PREFIX/lib/pkgconfig
export PKG_CONFIG_PATH=$XORG_PREFIX/share/pkgconfig:$PKG_CONFIG_PATH
export PATH=$XORG_PREFIX/bin:$PATH
export LIBRARY_PATH=$XORG_PREFIX/lib
export C_INCLUDE_PATH=$XORG_PREFIX/include
export CPLUS_INCLUDE_PATH=$XORG_PREFIX/include
export ACLOCAL="aclocal -I $XORG_PREFIX/share/aclocal"
EOF
chmod 644 /etc/profile.d/xorg.sh


