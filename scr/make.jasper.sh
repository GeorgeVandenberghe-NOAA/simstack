export PFX=`/bin/pwd`
tar -xvf jasper.2.0.25.tar
cd jasper-2.0.25
 cmake -G 'Unix Makefiles' -H$PFX/jasper-2.0.25 -B$PFX/jasper-2.0.25/build_jasper -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=RELEASE -DJAS_ENABLE_DOC=FALSE -DCMAKE_POLICY_DEFAULT_CMP0074=NEW -DJAS_ENABLE_SHARED=OFF
 cd $PFX/jasper-2.0.25/build_jasper
make clean
 make -j 1
 make install


