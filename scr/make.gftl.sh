cd gFTL-shared/
rm -rf build
mkdir build
cd build
cmake  -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make -j 8
make install

