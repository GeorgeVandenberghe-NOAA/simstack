# building hdf5,netcdf with parallel compressed support
## SET EXTERNALLY.  MODULES FOR COMPILER AND MPI ARE ALSO SET EXTERNALLY
export PW=`/bin/pwd`
export CONFIG_SITE=/tmp/dummy

export LDFLAGS=-L${PREFIX}/SHARED/lib
export CPPFLAGS=-I${PREFIX}/SHARED/include
export LD_LIBRARY_PATH="$PREFIX/SHARED/lib:$PREFIX/SHARED/zstd/lib:${LD_LIBRARY_PATH}"
export HDF5_PLUGIN_PATH=$NETP/shared
rm -rf netcdf-fortran-4.6.0

tar -xvf netcdf-fortran.v4.6.0.tar.gz 

cd netcdf-fortran-4.6.0
export LIBS=`$PREFIX/SHARED/bin/nc-config --libs`
 ./configure --prefix=$PREFIX/shared   --enable-shared  2>&1 | tee ../logs/netf.config
make clean
make  2>&1  | tee ../logs/netf.make
make install  2>&1  | tee ../logs/netf.install
