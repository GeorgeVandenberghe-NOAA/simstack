rm -rf  zlib-1.2.11

git clone --recursive https://github.com/madler/zlib zlib-1.2.11
cd zlib-1.2.11
git checkout v1.2.11
mkdir build
 cd build
#export  FC=ftn
# export CC=cc
# export CXX=CC

 ../configure --prefix=$PREFIX  --static
 make -j1
 make install

