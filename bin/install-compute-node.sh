#!/bin/bash
#
# This should be run only on machine that you want to become
# compute nodes.
#
# You must pass the full path to the environments.json for this
# to work right. 
#
set -exu
cd /srv/simple-stack/bin/
/srv/simple-stack/bin/install-compute ${1}
