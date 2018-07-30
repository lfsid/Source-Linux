################################################################
#
################################################################
. ./config2.sh

cd $src
git clone https://github.com/scopatz/nanorc.git nano_syntax
cd nano_syntax

#sed -i 's/master.zip/master.zip --no-check-certificate/' install.sh

./install.sh

#cd $src && rm -rf 
