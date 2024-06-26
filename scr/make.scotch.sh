rm -rf scotch-v7.0.4
tar -xvf scotch-v7.0.4.tar.gz

cd  scotch-v7.0.4
rm -rf build
mkdir build
cd build
cmake ..  -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_STANDARD=99 -DBUILD_LIBSCOTCHMETIS=ON -DINSTALL_METIS_HEADERS=ON -DBUILD_LIBESMUMPS=OFF -DBUILD_SHARED_LIBS=OFF -DBUILD_PTSCOTCH=ON -DTHREADS=OFF -DMPI_THREAD_MULTIPLE=OFF
make -j 1 VERBOSE=1
make install

