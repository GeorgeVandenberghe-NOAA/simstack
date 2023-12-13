#*rm 2.1.4.tar.gz
#*wget  https://github.com/libjpeg-turbo/libjpeg-turbo/archive/refs/tags/2.1.4.tar.gz
rm -rf libjpeg-turbo-2.1.4

tar -xvf 2.1.4.tar.gz

cd libjpeg-turbo-2.1.4

rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$NETP -DCMAKE_Fortran_COMPILER=$FC -DENABLE_TESTS=OFF -DOPENMP=OFF -DSHARED=OFF  -DENABLE_SHARED=0
read a
make clean
make
make install
cd ..
rm -rf build

