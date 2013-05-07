#!/bin/bash
#
# This should be run only on machine that you want to become
# compute nodes.
#
# You must pass the full path to the environments.json for this
# to work right.
#
#KEYSTONE="keystone"
#NOVA="nova-api nova-cert nova-conductor nova-consoleauth nova-network nova-rpc-zmq-receiver nova-scheduler"
#GLANCE="glance-api glance-reg"
#CINDER="cinder-api cinder-scheduler cinder-volume" 
#
#function stop_services {
#    set +eux
#    local ITEMS=$@
#    for i in ${ITEMS} ; do
#        echo "Stopping: $i"
#        sudo service ${i} stop
#        sleep 1
#    done
#    set -eux
#}
#
#
#stop_services ${NOVA}
#stop_services ${GLANCE}
#stop_services ${CINDER}
#stop_services ${KEYSTONE}

set -exu

cd /srv/simple-stack/bin/
/srv/simple-stack/bin/install-controller ${1}
