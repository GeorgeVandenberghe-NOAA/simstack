# building hdf5,netcdf with parallel compressed support
## SET EXTERNALLY.  MODULES FOR COMPILER AND MPI ARE ALSO SET EXTERNALLY
export CONFIG_SITE=/tmp/dummy

## check whether ftn (crays) or mpiifort should be used

 ftn --help
export EC=$?
if [ $EC -ne 0 ]
then
mpiifort --help 2>&1 | wc
export FC=mpiifort
export CC=mpiicc
export CXX=mpiicpc
echo will use mpiifort
else
echo trying ftn
export FC=ftn
export CC=cc
export CXX=CC
fi
echo $FC --help
$FC  --help  
export EC=$?
echo $EC
if [ $EC  -ne 0 ]
then
echo MPIIFORT AND FTN do not work.   set FC CC AND CXX manually
echo by editing this script
fi
mkdir logs
cp fixes/* .
tar -xvf cmakes.tar
export PW=`/bin/pwd`
export PREFIX=`cd ../ ; /bin/pwd`/netcdf140.492.460.mapl241.fms2301.crtm240
export NETP=$PREFIX
export CMAKE_PREFIX_PATH=$PREFIX
export GSILIBS=$PREFIX
rm -rf  $PREFIX/lib $PREFIX/bin $PREFIX/include $PREFIX/mod* $PREFIX/E*
rm -rf $PREFIX

mkdir -p $PREFIX $PREFIX/bin $PREFIX/include $PREFIX/lib

rm setupa
echo " export PREFIX=$PREFIX">>setupa
echo " export NETP=$PREFIX" >>setupa
echo " export CMAKE_PREFIX_PATH=$PREFIX" >>setupa
echo " export ESMFMKFILE=$PREFIX/ESMF_8_4_1/lib/esmf.mk" >>setupa


rm -rf netcdf-c-4.7.4  netcdf-fortran-4.5.3  netcf-fortran-4.6.0  netcdf-c-4.9.1 netcdf-c.v4.9.2.tar.gz hdf5.122 netcdf-fortran-4.6.0/
 rm -rf hdf5-1.10.6  hdf5-hdf5-1_14_0
rm -rf esmf-8.4.1


tar -xvf netcdf-fortran.v4.6.0.tar.gz 
tar -xvf  netcdf-c.v4.9.2.tar.gz 
tar -xvf  hdf5-1_14_0.tar.gz

time sh -x make.hdf5.sh 
echo HDF5 INSTALL DONE
cd $PW
sh -x make.netcdfcc.sh
echo NETCDF-C INSTALL DONE
#2reada
cd $PW
sh -x make.netcdfcc.sh
sh -x make.netcdffcxx.sh

cd $PW
#BUILD ESMF

sh -x  make.esmf.sh 2>&1 | tee logs/esmf.log

export PW=`/bin/pwd`
cd $PW
sh -x make.esma.sh 
sh -x make.pio.sh |tee logs/pio.o
cd $PW
sh -x make.zlib.sh | tee logs/zlib.o
sh -x make.png.sh | tee logs/png.o
sh -x make.jpeg.sh | tee logs/jpeg.o
sh -x make.jasper.sh | tee logs/jasper.o
cd $PW
sh -x make.cmakemodules.sh | tee logs/cmakemodules.o
cd $PW
sh -x make.ecbuild.sh | tee logs/ecbuild.o
cd $PW
sh -x make.gftl.sh
sh -x make.gftl.sh 2>&1 | tee logs/gftl.o

sh -x make.yafyaml.sh | tee logs/yafyaml.o
cd $PW
export GFTL_ROOT=$PREFIX/GFTL_SHARED
export GFTL_SHARED_ROOT=$PREFIX/GFTL_SHARED

sh -x make.mapl2.sh 2>&1  | tee logs/mapl235.o
sh -x make.mapl3.sh 2>&1  | tee logs/mapl240.o
cd $PW
sh -x make.fms.sh 2>&1 | tee logs/fms.o

cd $PW
sh -x make.crtm.sh   2>&1  | tee logs/crtm.o
sh -x make.nceplibs.sh  2>&1  | tee logs/nceplibs.o
sh -x make.upp.sh   2>&1  | tee logs/upp.o
sh -x make.gsideps.sh 2>&1 | tee logs/gsideps.o

sh -x make.eckit.sh
sh -x git.ecbuild.sh
sh -x make.ecbuild.sh
sh -x make.fckit.sh

cd atlas.0.34.0
sh -x ../cmake.sh
cd $PW

cd udunits-2.2.28
sh -x make.sh
cd $PW

cd ecbuild.3.7.0
sh -x ../cmake.sh
cd $PW

cd gsl-lite-0.41.0
sh -x ../cmake.sh
cd $PW

rm -rf  boost_1_68_0
tar -xvf boost_1_68_0.tar.gz
cd  boost_1_68_0
pwd
cp -r boost $PREFIX/include 
cd $PW

rm -rf boost_1_68_0


rm -rf netcdf-c-4.7.4  netcdf-fortran-4.5.3  netcf-fortran-4.6.0  netcdf-c-4.9.1 hdf5.122 netcdf-fortran-4.6.0/
 rm -rf hdf5-1.10.6  hdf5-hdf5-1_14_0
rm -rf esmf-8.4.1
time sh -x make.scotch.sh 2>&1 | tee logs/scotch.log
time sh -x make.shared.stuff.sh 2>&1 | tee shared.stuff.log
echo WGRIB2 NOT MADE .. COMMENTED OUT
#sh -x scr/make.wgrib2.sh 2>&1 | tee make.wgrib2.out
