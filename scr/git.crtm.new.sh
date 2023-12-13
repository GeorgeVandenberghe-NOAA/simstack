export CV=v2.4.0_emc
rm -rf crtm.$CV
git clone  https://github.com/JCSDA/crtm crtm.$CV 
cd crtm.$CV 
git checkout  $CV 
read a
sh -x ../make.crtm.sh
