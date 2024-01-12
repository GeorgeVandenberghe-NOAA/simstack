rm -rf build
mkdir build
cd build
 cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../install -DGSI_MODE=GFS -DENKF_MODE=GFS ..
make -j 4 VERBOSE=1
make install
