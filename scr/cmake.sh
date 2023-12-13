rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$NETP -DCMAKE_Fortran_COMPILER=$FC -DBUILD_8=ON -DENABLE_TESTS=OFF -DOPENMP=OFF -DSHARED=OFF -DENABLE_SHARED=0 
make clean
make
make install
cd ..
rm -rf build
