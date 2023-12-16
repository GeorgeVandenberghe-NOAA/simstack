rm -rf build dists
mkdir build
mkdir dists ; cd dists
cp ../scr/*sh .
sh -x ../scr/git.all.sh

cd ../build
cp -r ../scr ./
cp -r ../fixes/* .
#sh -x git.all.sh
cp  -r ../dists/*  .
read a
time sh -x maa.sh 2>&1 | tee bout
