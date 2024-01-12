rm -rf build
mkdir build
cd build
 cmake -DBUILD_UTIL_ALLMON=ON -DCMAKE_INSTALL_PREFIX=../install .. 
make
make install
