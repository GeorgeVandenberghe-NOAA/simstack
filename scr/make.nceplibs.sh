export PW=`/bin/pwd`
export  CMAKE_PREFIX_PATH=$NETP 
for f in gfsio  g2 ip sigio sfcio bacio w3nco w3emc nemsio g2c g2tmpl landsfcutil
do
cd nceplibs-$f 
sh -x ../cmake.sh
cd $PW
done
cd nceplibs-sp
cp ../CMakelists.txt.sp CMakelists.txt
sh -x ../cmake.sh.omp
cd $PW

