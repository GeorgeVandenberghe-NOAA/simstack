 version=1.6.37
rm -rf libpng-1.6.37
git clone https://github.com/glennrp/libpng libpng-1.6.37
 cd libpng-1.6.37
git checkout v1.6.37

mkdir build
cd build 
 cmake  .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=RELEASE -DZLIB_ROOT=$PREFIX -DPNG_SHARED=OFF
 make -j 1 VERBOS=1
 make install

