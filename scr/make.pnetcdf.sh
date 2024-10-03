cd pio-2.5.10
export PW=`/bin/pwd`
export CMAKE_PREFIX_PATH=$NETP:/tmp/pnetcdf
cp ./scripts/genf90.pl genf90/./
rm -rf build
mkdir build
cd build
 cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DNetCDF_PATH=$PREFIX -DPnetCDF_PATH=$PREFIX  -DHDF5_PATH=$PREFIX -DCMAKE_VERBOSE_MAKEFILE=1 -DUSER_CMAKE_MODULE_PATH=$PW/pio-2.5.7/CMake_Fortran_utils -DGENF90_PATH=$PW/genf90 -DWITH_PNETCDF=ON -DPIO_ENABLE_TIMING=OFF
make -j 1 VERBOSE=1
make install

