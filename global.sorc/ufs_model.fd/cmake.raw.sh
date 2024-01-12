rm -rf build
mkdir build
cd build
cmake ..  -DAPP=S2SWA -D32BIT=ON -DCCPP_SUITES=FV3_GFS_v17_p8,FV3_GFS_v17_coupled_p8 -DMPI=ON -DCMAKE_BUILD_TYPE=Release -DMOM6SOLO=ON
make -j 8
cp ufs_model ../tests/ufs_model.x
