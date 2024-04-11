cd netcdf-c-4.9.2
export LDFLAGS="-L${PREFIX}/SHARED/lib -L$PREFIX/SHARED/zstd/lib   -Wl,-rpath -Wl,$PREFIX/SHARED/lib"
export CPPFLAGS="-I${PREFIX}/SHARED/include -I $PREFIX/SHARED/zstd/include"
export LD_LIBRARY_PATH="$PREFIX/SHARED/lib:${LD_LIBRARY_PATH}"
export install_prefix=$PREFIX/SHARED
export LIBS="-lhdf5_hl -lhdf5 -lz -lzstd -lm"
echo $CPPFLAGS
make clean
./configure --enable-netcdf4  --enable-logging     --disable-libxml2 --prefix=$PREFIX/SHARED   --enable-shared --disable-byterange
make
make install
echo $CPPFLAGS
exit
if(USE_ZSTD_AND_DYNAMIC_HDF5)
    set(netcdf_cppflags_env        "CPPFLAGS=-I${install_prefix}/hdf5/include -I${install_prefix}/zstd/include")
    set(netcdf_ldflags_env         "LDFLAGS=-L${install_prefix}/hdf5/lib -L${install_prefix}/zstd/lib -L${install_prefix}/zlib/lib -Wl,-rpath -Wl,${install_prefix}/hdf5/lib")
    set(netcdf_libs_env
"LIBS=-lhdf5_hl -lhdf5 -lz -lzstd -lm")
    set(netcdf_ld_library_path_env "LD_LIBRARY_PATH=${install_prefix}/hdf5/lib:$ENV{LD_LIBRARY_PATH}")
else()
    set(netcdf_cppflags_env        "CPPFLAGS=-I${install_prefix}/hdf5/include")
    set(netcdf_ldflags_env         "LDFLAGS=-L${install_prefix}/hdf5/lib -L${install_prefix}/zlib/lib")
    set(netcdf_libs_env            "LIBS=-lhdf5_hl -lhdf5 -lz -lm")
    set(netcdf_ld_library_path_env "")
endif()

