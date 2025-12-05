export PW=`/bin/pwd`
wget https://parallel-netcdf.github.io/Release/pnetcdf-1.13.0.tar.gz ; tar -xvf pnetcdf-1.13.0.tar.gz

   rm -rf nceplibs*
export  CMAKE_PREFIX_PATH=$NETP 
for f in ip sp sigio sfcio bacio w3nco w3emc nemsio g2c g2tmpl gfsio
do
rm -rf nceplibs-$f
done
git clone  https://github.com/noaa-emc/nceplibs-g2
cd nceplibs-g2
git checkout v3.5.1
rm -rf build
mkdir build
cd build
## cmake .. -DCMAKE_INSTALL_PREFIX=/tmp/dud  -DCMAKE_Fortran_COMPILER=$FC  -DENABLE_TESTS=OFF -DOPENMP=OFF
##make
##make install
cd $PW
git clone  https://github.com/noaa-emc/nceplibs-ip
cd nceplibs-ip
git checkout v3.3.3 
#sh -x ../cmake.sh
cd $PW
git clone  https://github.com/noaa-emc/nceplibs-sp
cd nceplibs-sp
git checkout v2.4.0
cp ../CMakelists.txt.sp .
#sh -x ../cmake.sh.omp
cd $PW
git clone  https://github.com/Goddard-Fortran-Ecosystem/fArgParse.git fargparse

   git clone https://github.com/noaa-emc/nceplibs-sigio
    cd nceplibs-sigio
 git checkout v2.3.2
cd $PW
git clone  https://github.com/noaa-emc/nceplibs-landsfcutil
cd nceplibs-landsfcutil
git checkout v2.4.1
cd $PW
#    sh -x ../cmake.sh
cd $PW 

 git clone https://github.com/noaa-emc/nceplibs-sfcio
 cd nceplibs-sfcio
git checkout v1.4.1
#    sh -x ../cmake.sh
cd $PW
  git clone https://github.com/noaa-emc/nceplibs-bacio
  cd nceplibs-bacio
  git checkout v2.4.1
#  sh -x ../cmake.sh
git clone https://github.com/noaa-emc/nceplibs-w3nco
cd nceplibs-w3nco
  git checkout v2.4.1
#  sh -x ../cmake.sh
cd $PW
git clone https://github.com/noaa-emc/nceplibs-w3emc
cd nceplibs-w3emc
  git checkout v2.10.0
#  sh -x ../cmake.sh
cd $PW
   git clone https://github.com/noaa-emc/nceplibs-nemsio
    cd nceplibs-nemsio
    git checkout v2.5.4
#    sh -x ../cmake.sh
cd $PW
   git clone  https://github.com/noaa-emc/nceplibs-g2c
      cd nceplibs-g2c
   git checkout v1.6.4
#   sh -x ../cmake.sh
cd $PW
  git clone  https://github.com/noaa-emc/nceplibs-g2tmpl
 cd nceplibs-g2tmpl
  git checkout v1.13.0
#  sh -x ../cmake.sh
cd $PW
git clone  https://github.com/noaa-emc/nceplibs-gfsio
cd nceplibs-gfsio 
 git checkout v1.4.1
# sh -x ../cmake.sh
cd $PW
rm -rf nceplibs-bufr ncdiag ncio nceplibs-wrf_io
git clone https://github.com/noaa-emc/nceplibs-bufr
cd nceplibs-bufr
git checkout bufr_v11.7.0
cd $PW
#read a

git clone https://github.com/NOAA-EMC/GSI-ncdiag ncdiag
cd ncdiag
git checkout v1.1.1

#read a
cd $PW
rm -rf ncio
git clone https://github.com/noaa-emc/nceplibs-ncio ncio
cd ncio
git checkout v1.1.2
#read a

cd $PW
git clone https://github.com/noaa-emc/nceplibs-wrf_io
cd nceplibs-wrf_io
git checkout v1.2.0
cd $PW

#add build shells
/bin/pwd
#read a
tar -xvf cmakes.tar

cd $PW
rm -rf UPP
 git clone https://github.com/NOAA-EMC/UPP
 cd UPP
 git checkout upp_v10.0.10

cd $PW
rm -rf atlas.0.34.0

git clone https://github.com/ecmwf/atlas.git atlas.0.34.0
cd atlas.0.34.0
git checkout 0.34.0
cd $PW
wget https://github.com/libexpat/libexpat/releases/download/R_2_6_4/expat-2.6.4.tar.gz ; tar -xvf expat-2.6.4.tar.gz
wget https://downloads.unidata.ucar.edu/udunits/2.2.28/udunits-2.2.28.tar.gz
tar -xvf udunits-2.2.28.tar.gz
cp make.udunits.intenal.sh udunits-2.2.28/make.sh
cd  udunits-2.2.28
#sh -x make.sh
cd $PW
rm  -rf fckt.*
git clone https://github.com/ecmwf/fckit.git fckit.0.11.0
cd fckit.0.11.0
git checkout 0.11.0
#sh -x ../cmake.sh

cd $PW
rm -rf ecbuild.3.7.0
git clone https://github.com/ecmwf/ecbuild.git ecbuild.3.7.0
cd ecbuild.3.7.0
git checkout  3.7.0
#time sh -x ../cmake.sh
bash-4.2$ cat git.gsl-lite.sh
rm -rf  gsl-lite-0.41.0
cd $PW

git clone https://github.com/gsl-lite/gsl-lite gsl-lite-0.41.0
cd  gsl-lite-0.41.0
git checkout v0.41.0
#time sh -x ../cmake.sh
cd $PW

rm -rf ecbuild.3.7.0
git clone https://github.com/ecmwf/ecbuild.git ecbuild.3.7.0
cd ecbuild.3.7.0
git checkout  3.7.0
cd $PW
rm -rf  eckit-ecmwf-1.23.0
 git clone https://github.com/ecmwf/eckit.git eckit-ecmwf-1.23.0
   cd eckit-ecmwf-1.23.0
     git checkout 1.23.0
cd $PW

rm -rf atlas.0.34.0
git clone https://github.com/ecmwf/atlas.git atlas.0.34.0
cd atlas.0.34.0
git checkout 0.34.0
#sh -x ../cmake.sh
cd $PW
rm -rf libpng-1.6.37
git clone https://github.com/glennrp/libpng libpng-1.6.37
 cd libpng-1.6.37
git checkout v1.6.37
cd $PW
rm -rf jasper-2*
git clone --recursive  https://github.com/jasper-software/jasper jasper-2.0.25
cd jasper-2.0.25
git checkout version-2.0.25
cd ..

tar -cvf jasper.2.0.25.tar jasper-2.0.25
rm -rf  jasper-2.0.25

cd $PW
export CV=v2.4.0_emc ; rm -rf crtm.$CV
git clone  https://github.com/JCSDA/crtm crtm.$CV 
cd crtm.$CV 
git checkout  $CV 
cd $PW
rm -rf ecbuild.3.7.0
git clone https://github.com/ecmwf/ecbuild.git ecbuild.3.7.0
cd ecbuild.3.7.0
git checkout  3.7.0
cd $PW
git clone  https://github.com/Unidata/netcdf-cxx4.git  ; cd netcdf-cxx4 ; git checkout v4.3.1
cd $PW
wget -nv www.ftp.cpc.ncep.noaa.gov/wd51we/wgrib2/wgrib2.tgz.v3.1.1 ; tar -xvf wgrib2.tgz.v3.1.1 ; mv grib2 wgrib2.3.1.1
wget  https://github.com/GEOS-ESM/ESMA_cmake/archive/refs/tags/v3.4.3.tar.gz ; tar -xvf v3.4.3.tar.gz 

wget https://github.com/HDFGroup/hdf5/archive/refs/tags/hdf5-1_14_3.tar.gz
wget https://github.com/Unidata/netcdf-c/archive/v4.9.2.tar.gz ; mv v4.9.2.tar.gz netcdf-c.v4.9.2.tar.gz ; tar -xvf netcdf-c.v4.9.2.tar.gz
wget https://github.com/Unidata/netcdf-fortran/archive/v4.5.3.tar.gz ; mv v4.5.3.tar.gz netcdf-fortran.v4.5.3.tar.gz
wget https://github.com/Unidata/netcdf-fortran/archive/v4.6.0.tar.gz ; mv v4.6.0.tar.gz netcdf-fortran.v4.6.0.tar.gz ; tar -xvf netcdf-fortran.v4.6.0.tar.gz
wget  https://github.com/esmf-org/esmf/archive/refs/tags/v8.4.1.tar.gz ;  mv  v8.4.1.tar.gz esmf.v8.4.1.tar.gz
wget  https://github.com/esmf-org/esmf/archive/refs/tags/v8.5.0.tar.gz ;  mv  v8.5.0.tar.gz esmf.v8.5.0.tar.gz
wget  https://github.com/esmf-org/esmf/archive/refs/tags/v8.6.1.tar.gz ;  mv  v8.6.1.tar.gz esmf.v8.6.1.tar.gz
wget  https://github.com/esmf-org/esmf/archive/refs/tags/v8.6.0.tar.gz ;  mv  v8.6.0.tar.gz esmf.v8.6.0.tar.gz
# wget https://github.com/esmf-org/esmf/archive/refs/tags/v8.8.0b09.tar.gz ; mv v8.8.0b09.tar.gz esmf.v8.8.0b09.tar.gz
 wget https://github.com/esmf-org/esmf/archive/refs/tags/v8.8.0b10.tar.gz ; mv v8.8.0b10.tar.gz esmf.v8.8.0b10.tar.gz


wget https://github.com/GEOS-ESM/MAPL/archive/refs/tags/v2.46.4.tar.gz  ; mv v2.46.4.tar.gz MAPL.v2.46.4.tar.gz ; tar -xvf MAPL.v2.46.4.tar.gz 
wget https://github.com/GEOS-ESM/MAPL/archive/refs/tags/v2.46.3.tar.gz  ; mv v2.46.3.tar.gz MAPL.v2.46.3.tar.gz ; tar -xvf MAPL.v2.46.3.tar.gz 
wget https://github.com/GEOS-ESM/MAPL/archive/refs/tags/v2.40.3.tar.gz  ; mv v2.40.3.tar.gz MAPL.v2.40.3.tar.gz ; tar -xvf MAPL.v2.40.3.tar.gz 
wget https://github.com/GEOS-ESM/MAPL/archive/refs/tags/v2.35.2.tar.gz  ; mv v2.35.2.tar.gz MAPL.v2.35.2.tar.gz ; tar -xvf MAPL.v2.35.2.tar.gz 
wget https://github.com/GEOS-ESM/MAPL/archive/refs/tags/v2.53.0.tar.gz  ; mv v2.53.0.tar.gz MAPL.v2.53.0.tar.gz ; tar -xvf MAPL.v2.53.0.tar.gz 

rm -rf pil-2.5.10  pio2_5_10.tar.gz ;  wget https://github.com/NCAR/ParallelIO/archive/refs/tags/pio2_5_10.tar.gz ; tar -xvf pio2_5_10.tar.gz  ;  mv  ParallelIO-pio2_5_10/  pio-2.5.10 ;  mkdir pio-2.5.10/genf90 
git clone https://github.com/Goddard-Fortran-Ecosystem/gFTL-shared 
wget   https://github.com/Goddard-Fortran-Ecosystem/yaFyaml/archive/refs/tags/v1.0.4.tar.gz ; mv v1.0.4.tar.gz yafyaml.v1.0.4.tar.gz

 wget https://github.com/NOAA-GFDL/FMS/archive/refs/tags/2023.01.tar.gz ; mv 2023.01.tar.gz FMS.2023.01.tar.gz ; tar -xvf FMS.2023.01.tar.gz 
 wget https://github.com/NOAA-GFDL/FMS/archive/refs/tags/2023.02.01.tar.gz ; mv 2023.02.01.tar.gz FMS.2023.02.01.tar.gz ; tar -xvf FMS.2023.02.01.tar.gz 
 wget https://github.com/NOAA-GFDL/FMS/archive/refs/tags/2023.04.tar.gz ; mv 2023.04.tar.gz FMS.2023.04.tar.gz ; tar -xvf FMS.2023.04.tar.gz 
 wget https://github.com/NOAA-GFDL/FMS/archive/refs/tags/2024.01.tar.gz ; mv 2024.01.tar.gz FMS.2024.01.tar.gz ; tar -xvf FMS.2024.01.tar.gz 

    wget  https://github.com/libjpeg-turbo/libjpeg-turbo/archive/refs/tags/2.1.4.tar.gz ; mv 2.1.4.tar.gz jpeg.2.1.4.tar.gz ; tar -xvf jpeg.2.1.4.tar.gz
wget https://github.com/NCAR/ParallelIO/archive/refs/tags/pio2_5_10.tar.gz ; tar -xvf pio2_5_10.tar.gz  ;  mv  ParallelIO-pio2_5_10/  pio-2.5.10 ;  mkdir pio-2.5.10/genf90 
wget  https://github.com/GEOS-ESM/ESMA_cmake/archive/refs/tags/v3.4.3.tar.gz ; mv v3.4.3.tar.gz esma.v3.4.3.tar.gz ; tar -xvf esma.v3.4.3.tar.gz
rm -rf  zlib-1.2.11
git clone --recursive https://github.com/madler/zlib zlib-1.2.11 ; cd zlib-1.2.11 ; git checkout v1.2.11
cd $PW
wget -nv https://boostorg.jfrog.io/artifactory/main/release/1.68.0/source/boost_1_68_0.tar.gz
wget  https://gitlab.inria.fr/scotch/scotch/-/archive/v7.0.4/scotch-v7.0.4.tar.gz ; tar -xvf scotch-v7.0.4.tar.gz 
wget  https://github.com/facebook/zstd/releases/download/v1.5.5/zstd-1.5.5.tar.gz ;  rm -rf zstd-1.5.5 ; tar -xvf zstd-1.5.5.tar.gz


