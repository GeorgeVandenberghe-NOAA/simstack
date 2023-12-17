rm -rf dists
tar -xvf /tmp/dists.tar
rm -rf build
mkdir build
cd build
cp -r ../scr ./
cp -r ../fixes/* .
cp scr/* .
rm -rf ../dists/*sh
cp -r ../dists/* .
#sh -x git.all.sh
read a
time sh -x maa.sh 2>&1 | tee bout
