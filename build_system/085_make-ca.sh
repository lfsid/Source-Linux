################################################################
#
################################################################
. ./config2.sh

cd $src
rm -rf make-ca-0.8
tar -xvzf make-ca-0.8.tar.gz
cp root.crt make-ca-0.8/
cp class3.crt make-ca-0.8/
cd make-ca-0.8
install -vdm755 /etc/ssl/local &&
openssl x509 -in root.crt -text -fingerprint -setalias "CAcert Class 1 root" \
        -addtrust serverAuth -addtrust emailProtection -addtrust codeSigning \
        > /etc/ssl/local/CAcert_Class_1_root.pem &&
openssl x509 -in class3.crt -text -fingerprint -setalias "CAcert Class 3 root" \
        -addtrust serverAuth -addtrust emailProtection -addtrust codeSigning \
        > /etc/ssl/local/CAcert_Class_3_root.pem

make install

/usr/sbin/make-ca -g


cd $src && rm -rf make-ca-0.8
