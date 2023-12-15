cd netcdf-c-4.9.2
export LDFLAGS=-L${PREFIX}/lib
export CPPFLAGS=-I${PREFIX}/include
export LD_LIBRARY_PATH="$PREFIX/lib:${LD_LIBRARY_PATH}"
export LIBS=`$PREFIX/bin/nc-config --libs`

./configure --enable-netcdf4  --prefix=$PREFIX   --disable-shared 
make
make install
