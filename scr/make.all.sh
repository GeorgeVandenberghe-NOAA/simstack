rm -rf build dists
mkdir build
mkdir dists ; cd dists
cp ../scr/*sh .
sh -x ../scr/git.all.sh

cd ../build
cp -r ../scr ./
cp -r ../fixes/* .
cp  -r ../dists/*  .
time sh -x maa.sh 2>&1 | tee bout
cd ..
tar -cvf build.tar build
tar -cvf dists.tar dists
cd global.sorc
tar -cvf ../build/workflow.tests.tar .


