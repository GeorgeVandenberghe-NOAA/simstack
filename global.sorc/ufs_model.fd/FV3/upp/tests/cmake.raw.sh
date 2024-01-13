rm -rf build
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=../install -DBUILD_WITH_WRFIO=ON -DBUILD_WITH_GTG=OFF -DBUILD_WITH_IFI=OFF ../../ 
make -j 8
ls -ltr
make install
cp ../install/bin/upp.x ../../../upp/exec/upp.x 

