################################################################
#
################################################################
. ./config3.sh

cd $src
rm -rf llvm-5.0.1.src
tar -xvf llvm-5.0.1.src.tar.xz
cd llvm-5.0.1.src

tar -xf ../cfe-5.0.1.src.tar.xz -C tools &&
tar -xf ../compiler-rt-5.0.1.src.tar.xz -C projects &&

mv tools/cfe-5.0.1.src tools/clang &&
mv projects/compiler-rt-5.0.1.src projects/compiler-rt

mkdir -v build &&
cd       build &&

CC=gcc CXX=g++                              \
cmake -DCMAKE_INSTALL_PREFIX=/usr           \
      -DLLVM_ENABLE_FFI=ON                  \
      -DCMAKE_BUILD_TYPE=Release            \
      -DLLVM_BUILD_LLVM_DYLIB=ON            \
      -DLLVM_TARGETS_TO_BUILD="host;AMDGPU" \
      -Wno-dev ..                           &&
make -j$(nproc)

make install


cd $src && rm -rf llvm-5.0.1.src
