##############################################################################
#
##############################################################################


echo 'int main(){}' > dummy.c
gcc ${BUILD32} dummy.c
readelf -l a.out | grep ': /lib'

echo 'main(){}' > dummy.c
gcc ${BUILD64} dummy.c
readelf -l a.out | grep ': /lib'

rm -v dummy.c a.out
