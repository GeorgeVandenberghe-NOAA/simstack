rm -rf build
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../install -DBUILD_UTIL_ENKF_GFS=ON -DBUILD_UTIL_NCIO=ON .. 
make
make install
