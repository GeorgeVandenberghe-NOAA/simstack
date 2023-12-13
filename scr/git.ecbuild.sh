rm rf ecbuild.3.7.0
git clone https://github.com/ecmwf/ecbuild.git ecbuild.3.7.0
cd ecbuild.3.7.0
git checkout  3.7.0
time sh -x ../cmake.sh
