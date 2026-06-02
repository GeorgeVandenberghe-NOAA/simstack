export PW=`/bin/pwd`
export GSILIBS=$NETP
for f in ncdiag nceplibs-bufr  nceplibs-wrf_io  ncio

do
        cd $f
        sh -x cmake.sh
        cd $PW
echo done with $f
done
cd $PW
cd nceplibs-bacio

rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$NETP/gsideps/bacio.2.4.1 -DCMAKE_Fortran_COMPILER=$FC -DBUILD_8=ON -DENABLE_TESTS=OFF -DOPENMP=OFF -DSHARED=OFF -DENABLE_SHARED=0
make clean
make
make install
cd ..
rm -rf build
cd $PW
cd nceplibs-ip2 ;  git checkout v5.1.0

rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$NETP/gsideps/ip.5.1.0 -DCMAKE_Fortran_COMPILER=$FC -DENABLE_TESTS=OFF -DOPENMP=ON -DBUILD_8=ON
make clean
make
make install
rm -rf build

