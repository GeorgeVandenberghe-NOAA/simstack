cd zlib-1.2.11
mkdir build
 cd build
 ../configure --prefix=$PREFIX  --static
 make -j1
 make install

