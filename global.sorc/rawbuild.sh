export PW=`/bin/pwd`
mkdir logs
cd gfs_utils.fd
sh -x cmake.raw.sh  2>&1 | tee ../logs/gfsutils.log
cd ..
read a
cd gsi_enkf.fd
sh -x cmake.raw.sh  2>&1  | tee $PW/logs/gsienkf.log
cd ..
read a
cd gsi_monitor.fd
sh -x cmake.raw.sh  2>&1  | tee $PW/logs/gsimonitor.log
cd ..
read a
cd gsi_utils.fd
sh -x cmake.raw.sh  2>&1  | tee $PW/logs/gsiutils.log
cd ..
read a
cd ufs_model.fd
sh -x cmake.raw.sh  2>&1  | tee $PW/logs/ufsmodel.log
cd ..
read a
cd ufs_utils.fd
sh -x cmake.raw.sh  2>&1  | tee $PW/logs/ufsutilslog
cd ..
read a
sh -x raw.ww3.sh 2>&1 | tee logs/ww3utilslog
read a
cd ufs_model.fd/FV3/upp/tests
sh -x cmake.raw.sh  2>&1  | tee $PW/logs/upplog
cd $PW
