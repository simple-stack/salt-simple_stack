#!/bin/bash
#
# This should be run only on machine that you want to become
# compute nodes.
#
# You must pass the full path to the environments.json for this
# to work right. 
#
NOVA=$(ls -1 /etc/init/nova-* | sed 's#/etc/init/##' | sed 's/\.conf//g')

function stop_services {
    set +eux
    local ITEMS=$@
    for i in ${ITEMS} ; do
        echo "Stopping: $i"
        sudo service ${i} stop
        sleep 1
    done
    set -eux
}

set -exu
stop_services ${NOVA}
cd /srv/simple-stack/bin/
/srv/simple-stack/bin/install-compute ${1}
