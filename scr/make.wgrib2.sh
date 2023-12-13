 export CC=icc
 export FC=ifort
 export COMP_SYS=intel_linux

rm $PREFIX/*/*wgrib*
cd wgrib2.3.1.1
#cd grib2
make clean
make all
make lib
cp lib/*.mod $PREFIX/lib
cp lib/libwgrib2.a lib/libwgrib2_api.a  $PREFIX/lib
cp wgrib2/wgrib2 $PREFIX/bin
cp include/* $PREFIX/include
cp lib/*.mod $PREFIX/include
ls -l wgrib2/wgrib2
