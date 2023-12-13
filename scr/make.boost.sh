rm -rf  boost_1_68_0
wget -nv https://boostorg.jfrog.io/artifactory/main/release/1.68.0/source/boost_1_68_0.tar.gz
tar -xvf boost_1_68_0.tar.gz
cd  boost_1_68_0
pwd
cp -r boost $PREFIX/include 
rm -rf boost_1_68_0


