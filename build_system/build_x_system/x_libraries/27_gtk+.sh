#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf gtk+-3.22.28
tar -xvf gtk+-3.22.28.tar.xz
cd gtk+-3.22.28

./configure --prefix=/usr             \
            --sysconfdir=/etc         \
            --enable-broadway-backend \
            --enable-x11-backend      \
            --enable-wayland-backend &&
make -j$(nproc)

make install

mkdir -vp ~/.config/gtk-3.0
cat > ~/.config/gtk-3.0/settings.ini << "EOF"
[Settings]
gtk-theme-name = Adwaita
gtk-icon-theme-name = oxygen
gtk-font-name = DejaVu Sans 12
gtk-cursor-theme-size = 18
gtk-toolbar-style = GTK_TOOLBAR_BOTH_HORIZ
gtk-xft-antialias = 1
gtk-xft-hinting = 1
gtk-xft-hintstyle = hintslight
gtk-xft-rgba = rgb
gtk-cursor-theme-name = Adwaita
EOF


cd $src && rm -rf gtk+-3.22.28
