export CV=v2.4.0_emc
cd crtm.$CV 
rm -rf build ; mkdir build ; cd build
 cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_Fortran_COMPILER=$FC -DENABLE_TESTS=OFF -DOPENMP=OFF
make -j 4
make install

