rm -rf build
mkdir build
cd build
 cmake .. -DCMAKE_INSTALL_PREFIX=../ -DCMAKE_INSTALL_BINDIR=exec -DBUILD_TESTING=OFF -DGFS=ON
make
make install
