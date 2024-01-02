# simstack
simple software stack for NCEP dependencies.   Build and retrieve capabilities only
created to provide a line by line build of every NCEP application dependency without overarching APIs like spack.
experience shows this approach is most effective on broken or weird machines where standard APIs can't quickly build and it reduces time to UFS and other application running
It is NOT intended to replace spack.  Many dependency safety checks are off and it assumes users really know what they are doing.

Build instructions

1:  Full build

    Preload MPI, the compiler, python and a recent cmake (system cmake is usually too  backlevel to function with NOAA software builds) with your system's module commands
    Run the script sh scr/make.all.sh (should take about 100 minutes)
     When this completes ALL dependencies will be in ./.. something.. set in PREFIX in scr/maa.sh  with current value  ./netcdf140.492.460.mapl235.fms2301.crtm240.z 
     Dependencies,  are in this directory ./lib ./lib64 ./bin and ./include  and a user build can access them setting CMAKE_PREFIX_PATH to this directory.
     
    An example if the dependencies were built in /tmp/gwv/simstack/netcdf140.492.460.mapl235.fms2301.crtm240.z

 export CMAKE_PREFIX_PATH=/tmp/gwv/simstack/netcdf140.492.460.mapl235.fms2301.crtm240.z
 export ESMFMKFILE=/tmp/gwv/simstack/netcdf140.492.460.mapl235.fms2301.crtm240.z/ESMF_8_4_1/lib/esmf.mk
      
    This is all that is needed for the ufs, gsi, enkf, ufs_utils, upp,  and gsi_utils cmakes in global workflow to work (GDAS DOES NOT WORK!!)

1a :   The full build assumes full connectivity to various git repositories from your system.  If ANY are blocked, it will be easier to run this
build on another system with full connectivity and then copy the contents of the resulting ./dists directory to the system with blocked repository gits, 
bypassing the need for external gits.

      For example on hera, a known sufficiently connected system (Orion, Acorn, GaeaC5 and Hercules also are sufficiently connected, jet is not)

mkdir /tmp/sim


module load  intel/18.0.5.274 
module load   impi/2018.4.274 
module load cmake
module load intelpython/2022.3.0
cd /tmp/sim
git clone https://github.com/George.Vandenberghe-NOAA/simstack
cd simstack
sh -x scr/make.all.sh



Then when its done, tar -cvf $SOMEWHERE.ON.HERA ./dists

copy $SOMEWHERE.ON.HERA to  your system $SOMEWHERE.LOCAL as a tarball

On your blocked  system

mkdir /tmp/sim
cd /tmp/sim
git clone https://github.com/George.Vandenberghe-NOAA/simstack
cd simstack
tar -xvf $SOMEWHERE.LOCAL
sh -x scr/make.fromdist.sh (it's make.all.sh with the dist gits removed)


1b.   It is possible for the build from contents in dists to fail since some distributions (gFTL) do internal gits inside cmake at build time)
So far the following method has succeeded on such systems (airgapped to the Internet)

Again on hera as the well connected system

tar -cvf $SOMEWHERE.ON.HERA ./build

copy the BUILD tarball to the airgapped system and untar it on the simstack root as above

cd to ./build and run sh maa.sh   This will repeat the build but with internally prefetched packages inside the distributions e.g. gFTL


This procedure was tested with hera as the well connected system and a jet compute node (tjet) as the internet disabled system.



