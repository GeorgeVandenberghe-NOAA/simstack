rm -rf  yafyaml-v0.5.1
git clone https://github.com/Goddard-Fortran-Ecosystem/yafyaml.git  yafyaml-v0.5.1
 cd yafyaml-v0.5.1
 git checkout v0.5.1
 rm -rf build
 mkdir -p build
 cd build
 cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make -j 1
make install

