#!/bin/bash -ex
cd ~
wget https://github.com/openstack-dev/devstack/archive/stable/icehouse.zip
unzip icehouse.zip
cd ~/devstack-stable-icehouse
cp /vagrant_data/localrc.working localrc
