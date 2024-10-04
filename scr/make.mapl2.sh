cd  MAPL-2.35.2



export ZLIB_ROOT=$PREFIX
export PNG_ROOT=$PREFIX
export PIO_ROOT=$PREFIX
export YAFYAML_ROOT=$PREFIX
export jasper_ROOT=$PREFIX        
export ESMFMKFILE=$PREFIX/ESMF_8_4_1/lib/esmf.mk
export ESMA_CMAKE_ROOT=$PREFIX
export ECBUILD_ROOT=$PREFIX
export CMAKEMODULES_ROOT=$PREFIX
export NETCDF=$PREFIX
export NetCDF_ROOT=$PREFIX
  set -x
export FC=$FC
export CC=$CC
export CXX=$CXX       

[[ -d build ]] && rm -rf build
mkdir -p build && cd build

CMAKE_OPTS=""


export PATH=$NETCDF/bin:$PATH
export NTHREADS=4

#source $HOME/envset
 cmake .. \
      -DCMAKE_INSTALL_PREFIX=$NETP/MAPL-2.35.2  -DUSE_F2PY=OFF \
      -DCMAKE_MODULE_PATH="${ESMA_CMAKE_ROOT};${CMAKEMODULES_ROOT}/Modules;${ECBUILD_ROOT}/share/ecbuild/cmake" \
      -DCMAKE_BUILD_TYPE=Release -DCMAKE_Fortran_COMPILER=$FC \
      -DBUILD_WITH_FLAP=OFF \
      -DBUILD_WITH_PFLOGGER=OFF \
      -DBUILD_WITH_FARGPARSE=OFF \
      -DESMA_USE_GFE_NAMESPACE=ON \
      -DBUILD_SHARED_MAPL=OFF \
      -DUSE_EXTDATA2G=OFF \
      ${CMAKE_OPTS}

gmake -j${NTHREADS:-4} install  VERBOSE=1

#
echo "  "
echo "Completed gmake install in build_mapl.sh"
echo "  "

