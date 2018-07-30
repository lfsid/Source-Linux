#####################################################################
#
#####################################################################
. ./config.sh

cd $src
rm -rf make-ca-0.7
tar -xvzf make-ca-0.7.tar.gz
mv root.crt class3.crt make-ca-0.7/
cd make-ca-0.7

install -vdm755 /etc/ssl/local &&
openssl x509 -in root.crt -text -fingerprint -setalias "CAcert Class 1 root" \
        -addtrust serverAuth -addtrust emailProtection -addtrust codeSigning \
        > /etc/ssl/local/CAcert_Class_1_root.pem &&
openssl x509 -in class3.crt -text -fingerprint -setalias "CAcert Class 3 root" \
        -addtrust serverAuth -addtrust emailProtection -addtrust codeSigning \
        > /etc/ssl/local/CAcert_Class_3_root.pem

#make -j$(nproc)
make install

cd $src && rm -rf make-ca-0.7
