rm -rf build ; mkdir build ; cd build
cmake  -DMPIEXEC_NUMPROC_FLAG=-n -DBUILD_GSIBEC=ON -DCLONE_JCSDADATA=NO -DWORKFLOW_TESTS=ON ..  2>&1 | tee cmakeout
time make -j 1 VERBOSE=1 2>&1 | tee makeout

