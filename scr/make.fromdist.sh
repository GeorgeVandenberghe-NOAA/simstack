rm -rf build
mkdir build
cd build
cp -r ../scr ./
cp -r ../fixes/* .
cp scr/* .
cp -r ../dists/* .
#sh -x git.all.sh
read a
time sh -x maa.sh 2.&1 | tee bout
