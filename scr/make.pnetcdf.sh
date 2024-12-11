rm -rf  pnetcdf-1.13.0
tar -xvf  pnetcdf-1.13.0.tar.gz
                       cd pnetcdf-1.13.0
                      ./configure --prefix=$PREFIX   --disable-shared --enable-static
                      make -j 1 VERBOSE=1
                      make install

