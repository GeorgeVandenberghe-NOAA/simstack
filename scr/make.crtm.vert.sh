export CV=v2.4.0_emc.1
#export CV=v2.4.1-jedi.1
cd crtm.$CV 
pwd
read a
rm -rf build ; mkdir build ; cd build
export CMAKE_PREFIX_PATH=$NETP/gsideps/bacio.2.4.1:$NETP/gsideps/ip.5.1.0:$NETP/packages/sigio:$NETP/packages/bufr:$NETP/packages/nemsio:$NETP/packges/sfcio:$NETP/packages/bacio:$NETP/packages/w3emc:$NETP/packages/ncio:$NETP/packages/crtm:$NETP/packages/ncdiag:$NETP
   module load netcdf-c/4.9.2
  module load netcdf-fortran/4.6.1
 cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX/packages/crtm  -DCMAKE_Fortran_COMPILER=$FC -DENABLE_TESTS=OFF -DOPENMP=OFF -DBUILD_SHARED_LIBS=OFF
make -j 4
make install

