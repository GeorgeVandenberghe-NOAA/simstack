rm -rf atlas.0.34.0

git clone https://github.com/ecmwf/atlas.git atlas.0.34.0
cd atlas.0.34.0
git checkout 0.34.0
sh -x ../cmake.sh


