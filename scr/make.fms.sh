export NETCDROOT=$PREFIX
export PW=`/bin/pwd`
set -e
cd FMS-2023.01
rm -rf build ; mkdir build ; cd build
cmake  -DCMAKE_INSTALL_PREFIX=$PREFIX  -DCMAKE_PREFIX_PATH=$NETCDROOT -DCMAKE_C_FLAGS=${CFLAGS_fms} -DCMAKE_Fortran_FLAGS=${FCFLAGS_fms} -DGFS_PHYS=ON -D64BIT=ON -DOPENMP=ON -DCONSTANTS=GFS ..

make -j 4
make install
cd $PW/FMS-2023.01
# FMS2023.01 directory population
rm -rf build ; mkdir build ; cd build
cmake  -DCMAKE_INSTALL_PREFIX=$PREFIX/fms.2023.01  -DCMAKE_PREFIX_PATH=$NETCDROOT -DCMAKE_C_FLAGS=${CFLAGS_fms} -DCMAKE_Fortran_FLAGS=${FCFLAGS_fms} -DGFS_PHYS=ON -D64BIT=ON -DOPENMP=ON -DCONSTANTS=GFS ..
make -j 4
make install
# FMS2023.02.01 directory population

cd $PW/FMS-2023.02.01
rm -rf build ; mkdir build ; cd build
cmake  -DCMAKE_INSTALL_PREFIX=$PREFIX/fms.2023.02.01  -DCMAKE_PREFIX_PATH=$NETCDROOT -DCMAKE_C_FLAGS=${CFLAGS_fms} -DCMAKE_Fortran_FLAGS=${FCFLAGS_fms} -DGFS_PHYS=ON -D64BIT=ON -DOPENMP=ON -DCONSTANTS=GFS -DUSE_DEPRECATED_IO=ON  ..

make -j 4
make install
