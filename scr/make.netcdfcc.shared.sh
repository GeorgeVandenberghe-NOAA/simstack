cd netcdf-c-4.9.2
export LDFLAGS=-L${PREFIX}/SHARED/lib
export CPPFLAGS=-I${PREFIX}/SHARED/include
export LD_LIBRARY_PATH="$PREFIX/SHARED/lib:${LD_LIBRARY_PATH}"
export FFLAGS="-fPIC"
export CFLAGS="-fPIC"
export CMAKE_PREFIX_PATH=$NETP/SHARED

#export LIBS=`$PREFIX/bin/nc-config --libs`

make clean
./configure --prefix=$PREFIX/SHARED  --enable-logging  --enable-netcdf-4  --disable-libxml2 --disable-dap --disable-shared  --enable-parallel4 --enable-parallel-tests --disable-byterange    --with-mpiexec=srun  2>&1 | tee ../logs/netc.config

make
make install
