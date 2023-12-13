# building hdf5,netcdf with parallel compressed support
## SET EXTERNALLY.  MODULES FOR COMPILER AND MPI ARE ALSO SET EXTERNALLY
export PW=`/bin/pwd`
export CONFIG_SITE=/tmp/dummy
export PREFIX=`cd ../ ; /bin/pwd`/netcdf140.492.460.mapl235.fms2301.crtm240.z
export NETP=$PREFIX
export CMAKE_PREFIX_PATH=$PREFIX
export GSILIBS=$PREFIX

export LDFLAGS=-L${PREFIX}/lib
export CPPFLAGS=-I${PREFIX}/include
export LD_LIBRARY_PATH="$PREFIX/lib:${LD_LIBRARY_PATH}"
tar -xvf netcdf-fortran.v4.6.0.tar.gz 
tar -xvf  netcdf-c.v4.9.2.tar.gz 

#tar -xvf  netcdf-fortran-4.5.3.tar.gz
#cd  netcdf-fortran-4.5.3
cd netcdf-fortran-4.6.0
export LIBS=`$PREFIX/bin/nc-config --libs`
 ./configure --prefix=$PREFIX   --disable-shared  2>&1 | tee ../logs/netf.config
make clean
make  2>&1  | tee ../logs/netf.make
make install  2>&1  | tee ../logs/netf.install
read a
cd $PW
cd netcdf-cxx4
sh -x ../make.netcdfcc.sh

