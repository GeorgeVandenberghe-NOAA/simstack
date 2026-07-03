# building hdf5,netcdf with parallel compressed support
## SET EXTERNALLY.  MODULES FOR COMPILER AND MPI ARE ALSO SET EXTERNALLY
export PW=`/bin/pwd`
export FFLAGS="-fPIC"
export CFLAGS="-fPIC"

export CONFIG_SITE=/tmp/dummy
#export NETP=$PREFIX
export CMAKE_PREFIX_PATH=$NETP/SHARED
export GSILIBS=$NETP/SHARED

export LDFLAGS=-L${PREFIX}/SHARED/lib
export CPPFLAGS=-I${PREFIX}/SHARED/include
export LD_LIBRARY_PATH="$PREFIX/SHARED/lib:${LD_LIBRARY_PATH}"
tar -xvf netcdf-fortran.v4.6.0.tar.gz 
tar -xvf  netcdf-c.v4.9.2.tar.gz 

#tar -xvf  netcdf-fortran-4.5.3.tar.gz
#cd  netcdf-fortran-4.5.3
cd netcdf-fortran-4.6.0
export LIBS=`$PREFIX/bin/nc-config --libs`
 ./configure --prefix=$PREFIX/SHARED     2>&1 | tee ../logs/netf.config
 #./configure --prefix=$PREFIX   --disable-shared  2>&1 | tee ../logs/netf.config
make clean
make  2>&1  | tee ../logs/netf.make
make install  2>&1  | tee ../logs/netf.install
