export PW=`/bin/pwd`
for f in ncdiag nceplibs-bufr  nceplibs-wrf_io  ncio

do
	cd $f
	sh -x cmake.sh
	cd $PW
echo done with $f
done

