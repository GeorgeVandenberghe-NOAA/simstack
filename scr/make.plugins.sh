export install_prefix=$PREFIX
export CMAKE_PREFIX_PATH=$NETP/SHARED
rm -rf  1.14.0.tar.gz

wget  https://github.com/HDFGroup/hdf5_plugins/archive/refs/tags/1.14.0.tar.gz
tar -xvf 1.14.0.tar.gz
cd hdf5_plugins-1.14.0/
export PWH=`/bin/pwd`
#read a
rm -rf builda
mkdir builda
cd builda

 cmake .. -C ../config/cmake/cacheinit.cmake -DCMAKE_C_COMPILER=$CC -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$NETP -DHDF5_INCLUDE_DIR=$NETP/SHARED/include -DHDF5_LINK_LIBS=$NETP/SHARED/lib -DUSE_SHARED_LIBS=ON -DBUILD_SHARED_LIBS=ON -DENABLE_BSHUF=OFF -DENABLE_BLOSC=OFF -DENABLE_BZIP2=OFF -DENABLE_JPEG=OFF -DENABLE_LZ4=OFF -DENABLE_LZF=OFF -DTGZPATH=$PWH/libs -DH5PL_ALLOW_EXTERNAL_SUPPORT=TGZ -DBUILD_EXAMPLES=OFF

make -j 1 VERBOSE=1
#read a
make install

