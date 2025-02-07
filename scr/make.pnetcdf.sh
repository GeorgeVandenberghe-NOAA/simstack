export MPIF90=$FC
export MPIF77=$FC
export MPICC=$CC
export MPICXX=$CXX
rm -rf  pnetcdf-1.13.0
tar -xvf  pnetcdf-1.13.0.tar.gz
                       cd pnetcdf-1.13.0
cat configure | sed 's/MPI_Bcast_c/ /g' >configure.new
mv configure.new configure
chmod 755 configure
echo REMOVED MPI_BCAST_C from configure because ufs build cannot find it
                      ./configure --prefix=$PREFIX   --disable-shared --enable-static
                      make -j 1 VERBOSE=1
                      make install


