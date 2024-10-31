time sh -x make.esmf4.sh  &
time sh -x make.esmf5.sh  &
time sh -x make.esmf6.sh  &
time sh -x make.esmf60.sh  &
wait
echo done in $SECONDS seconds

