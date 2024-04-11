cd netcdf-c-4.9.2
export LDFLAGS=-L${PREFIX}/lib
export CPPFLAGS=-I${PREFIX}/include
export LD_LIBRARY_PATH="$PREFIX/lib:${LD_LIBRARY_PATH}"
#export LIBS=`$PREFIX/bin/nc-config --libs`

make clean
./configure --prefix=$PREFIX  --enable-logging  --enable-netcdf-4  --disable-libxml2 --disable-dap --disable-shared  --enable-parallel4 --enable-parallel-tests --disable-byterange    --with-mpiexec=srun  2>&1 | tee ../logs/netc.config

make
make install
