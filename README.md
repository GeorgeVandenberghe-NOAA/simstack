# simstack
simple software stack for NCEP dependencies.   Build and retrieve capabilities only
created to provide a line by line build of every NCEP application dependency without overarching APIs like spack.
experience shows this approach is most effective on broken or weird machines where standard APIs can't quickly build and it reduces time to UFS and other application running
It is NOT intended to replace spack.  Many dependency safety checks are off and it assumes users really know what they are doing.
