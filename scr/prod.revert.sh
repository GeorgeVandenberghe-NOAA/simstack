cd *g2
git checkout v3.4.5
sh -x ../cmake.sh
cd ..
read a
cd *w3emc
git checkout v2.9.2
sh -x ../cmake.sh
cd ..
read a
git clone https://github.com/noaa-emc/nceplibs-w3nco
cd *w3nco
git checkout v2.4.1
sh ../cmake.sh
cd ..

