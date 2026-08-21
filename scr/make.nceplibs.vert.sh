export PW=`/bin/pwd`
export  CMAKE_PREFIX_PATH=$NETP 
for f in gfsio   ip sigio sfcio bacio w3nco bufr  w3emc   g2 nemsio g2c g2tmpl landsfcutil
do
export PACK=$f
cd nceplibs-$f 
sh -x ../cmake.vert.sh
cd $PW
done
cd nceplibs-sp
export PACK=sp
cp ../CMakelists.txt.sp CMakelists.txt
sh -x ../cmake.vert.sh
#sh -x ../cmake.sh.vert.omp
cd $PW

