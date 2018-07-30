#####################################################################
#
#####################################################################
. ./config2.sh

cd $src
rm -rf bash-4.4.18
tar -xvf bash-4.4.18.tar.gz
cd bash-4.4.18

./configure --prefix=/usr                       \
            --docdir=/usr/share/doc/bash-4.4 \
            --without-bash-malloc               \
            --with-installed-readline

make -j$(nproc)
make install

mv -vf /usr/bin/bash /bin


cd $src && rm -rf bash-4.4.18

