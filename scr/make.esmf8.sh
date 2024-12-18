
#!/bin/bash
export PW=`/bin/pwd`
rm -rf esmf-8.8.0b10
tar -xvf esmf.v8.8.0b10.tar.gz

cd  esmf-8.8.0b10
 
sh -x ../fixit

# ---------------> COMMON PORTION <-------------------
export NETCDF=$PREFIX
#export NETCDF=`cd ../../netcdf122shared ; /bin/pwd`
export HDF5_DIR=$NETCDF
 if [ $FC == 'ftn' ]
then
export ESMF_OS=Unicos
export ESMF_COMM=mpi
else
export ESMF_OS=Linux
export ESMF_COMM=intelmpi
fi
echo $ESMF_OS $ESMF_COMM
##########3read a
# ---------------> COMMON PORTION <-------------------


export ESMF_NETCDF_LIBS=" -lnetcdff -lnetcdf -L$HDF5_DIR/lib  -lhdf5 -lhdf5_hl -lhdf5 -lz"
echo $ESMF_NETCDF_LIBS 
sleep 5
export ESMF_NETCDF_LIBS=" -lnetcdff -lnetcdf -L$HDF5_DIR/lib  -lhdf5 -lhdf5_hl -lhdf5 -lz"
echo $ESMF_NETCDF_LIBS 
export ename=ESMF_8_8_10     

export ESMF_INSTALL_PREFIX=$NETCDF/$ename


export ESMF_DIR=`pwd`
export ESMF_COMPILER=intel
export ESMF_SITE=default
export ESMF_INSTALL_MODDIR=mod
export ESMF_INSTALL_BINDIR=bin
export ESMF_INSTALL_LIBDIR=lib
export ESMF_NETCDF=split
export NETCDF_DIR=$NETCDF
export ESMF_NETCDF_INCLUDE=$NETCDF_DIR/include
export ESMF_NETCDF_LIBPATH=$NETCDF_DIR/lib
#export ESMF_F90COMPILEOPTS="-fp-model source"
#export ESMF_CXXCOMPILEOPTS="-fp-model source"


gmake clean      
module list
gmake           
gmake install
cd $PW
exit

