rm -rf  eckit-ecmwf-1.23.0

 git clone https://github.com/ecmwf/eckit.git eckit-ecmwf-1.23.0
   cd eckit-ecmwf-1.23.0
     
     git checkout 1.23.0
       pwd
         read a
	  sh -x ../cmake.sh

