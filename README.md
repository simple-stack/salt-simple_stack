# Very simple deploy of OpenStack 

The idea here is just deploy openstack quicktly and make it repeatable.

This method relies on the [simple-stack](https://github.com/simple-stack/simple-stack) method of configuration. To make 
this as close to that as possiable I am not using salt to generate 
every variable. I need to let the simple-stack scripts do that. My 
reasoning is I don't want to be tied to using Salt later on. 

By just running a script I should be able to quickly move simple-stack to
Chef or Puppet even.

## Install

Check this repository into your salt /srv/salt and name it "simple_stack"

 cd /srv/salt
 git clone https://github.com/simple-stack/simple-stack.git simple_stack

## Pillar data

In the example dir you should find what pillar data you will need to provide.

Only use the example data as place holders. If you try to uses what is in
the file currently don't expect it to work.

