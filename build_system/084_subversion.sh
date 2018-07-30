################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf subversion-1.10.0
tar -xvjf subversion-1.10.0.tar.bz2
cd subversion-1.10.0

./configure --prefix=/usr             \
            --disable-static          \
            --with-apache-libexecdir  \
            --with-lz4=internal       \
            --with-utf8proc=internal &&
make -j$(nproc)

#make javahl

#make swig-pl # for Perl
#make swig-py \
#     swig_pydir=/usr/lib/python2.7/site-packages/libsvn \
#     swig_pydir_extra=/usr/lib/python2.7/site-packages/svn # for Python
#make swig-rb # for Ruby

make install &&

install -v -m755 -d /usr/share/doc/subversion-1.10.0 &&
cp      -v -R       doc/* \
                    /usr/share/doc/subversion-1.10.0

#make install-javahl

#make install-swig-pl
#make install-swig-py \
#      swig_pydir=/usr/lib/python2.7/site-packages/libsvn \
#      swig_pydir_extra=/usr/lib/python2.7/site-packages/svn
#make install-swig-rb

cd $src && rm -rf subversion-1.10.0
