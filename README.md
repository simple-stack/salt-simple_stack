# Very simple deploy of OpenStack 

The idea here is just deploy openstack quicktly and make it repeatable.

This method relies on the simple-stack method of configuration. To make 
this as close to that as possiable I am not using salt to generate 
every variable. I need to let the simple-stack scripts do that. My 
reasoning is I don't want to be tied to using Salt later on. 

By just running a script I should be able to quickly move simple-stack to
Chef or Puppet even.

## Pillar data

In the example dir you should find what pillar data you will need to provide

