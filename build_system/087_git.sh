################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf git-2.17.1
tar -xvf git-2.17.1.tar.xz
cd git-2.17.1

./configure --prefix=/usr --with-gitconfig=/etc/gitconfig &&
make -j$(nproc)

make install

tar -xf ../git-manpages-2.17.1.tar.xz \
    -C /usr/share/man --no-same-owner --no-overwrite-dir

mkdir -vp   /usr/share/doc/git-2.17.1 &&
tar   -xf   ../git-htmldocs-2.17.1.tar.xz \
      -C    /usr/share/doc/git-2.17.1 --no-same-owner --no-overwrite-dir &&

find        /usr/share/doc/git-2.17.1 -type d -exec chmod 755 {} \; &&
find        /usr/share/doc/git-2.17.1 -type f -exec chmod 644 {} \;

#git config --global http.sslVerify false

cd $src && rm -rf git-2.17.1
