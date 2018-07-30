################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf gmp-6.1.2
tar -xvf gmp-6.1.2.tar.xz
cd gmp-6.1.2

CC="gcc -isystem /usr/include ${BUILD64}" \
CXX="g++ -isystem /usr/include ${BUILD64}" \
LDFLAGS="-Wl,-rpath-link,/usr/lib64:/lib64 ${BUILD64}" \
./configure \
    --prefix=/usr \
    --libdir=/usr/lib64 \
    --enable-cxx \
    --docdir=/usr/share/doc/gmp-6.1.2

make -j$(nproc)
make html
make install
make install-html

mv -v /usr/include/gmp{,-64}.h

cat > /usr/include/gmp.h << "EOF"
/* gmp.h - Stub Header  */
#ifndef __STUB__GMP_H__
#define __STUB__GMP_H__

#if defined(__x86_64__) || \
    defined(__sparc64__) || \
    defined(__arch64__) || \
    defined(__powerpc64__) || \
    defined (__s390x__)
# include "gmp-64.h"
#else
# include "gmp-32.h"
#endif

#endif /* __STUB__GMP_H__ */
EOF

cd $src && rm -rf gmp-6.1.2
