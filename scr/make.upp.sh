# URL=https://github.com/NOAA-EMC/UPP.git
# git clone https://github.com/NOAA-EMC/UPP
 cd UPP
# git checkout upp_v10.0.10

export CRTM_INC=$NETP/include
 export W3EMC_INC4=$NETP/include_4
 export G2_INC4=$NETP/include_4
 export G2TMPL_INC=$NETP/include
 export SIGIO_INC4=$NETP/include_4
 export GFSIO_INC4=$NETP/include_4
 #export FC=ftn
 #export CC=cc
 git submodule update --init --recursive
 rm -rf build
 mkdir -p build
 cd build
 cmake .. -DCMAKE_INSTALL_PREFIX=$NETP -DBUILD_POSTEXEC=OFF -DOPENMP=ON
 make -j 1
 make install

