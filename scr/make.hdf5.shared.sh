# building hdf5,netcdf with parallel compressed support
## SET EXTERNALLY.  MODULES FOR COMPILER AND MPI ARE ALSO SET EXTERNALLY
export CONFIG_SITE=/tmp/dummy
export PW=`/bin/pwd`
export PREFIX=`cd ../ ; /bin/pwd`/netcdf140.492.460.mapl235.fms2301.crtm240.z
export NETP=$PREFIX
export CMAKE_PREFIX_PATH=$PREFIX
export GSILIBS=$PREFIX


export LDFLAGS=-L${PREFIX}/SHARED/lib
export CPPFLAGS=-I${PREFIX}/include
export LD_LIBRARY_PATH="$PREFIX/SHARED/lib:$PREFIX/lib:${LD_LIBRARY_PATH}"


tar -xvf  hdf5-1_14_0.tar.gz

cd hdf5-hdf5-1_14_0/
./configure --prefix=$PREFIX/SHARED  --enable-hl --enable-parallel  --enable-fortran --enable-shared --disable-static  2>&1 | tee ../logs/hdf5.config
read a
make clean
make  2>&1 | tee logs/hdf5.make
make install 2>&1 l | tee ../logs/hdf5.install
##############make check 
echo HDF5 INSTALL DONE
