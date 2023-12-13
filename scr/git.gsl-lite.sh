rm -rf  gsl-lite-0.41.0

git clone https://github.com/gsl-lite/gsl-lite gsl-lite-0.41.0
cd  gsl-lite-0.41.0
git checkout v0.41.0
time sh -x ../cmake.sh
