#!/bin/bash

openstack overcloud deploy \
--timeout 100 \
--templates /usr/share/openstack-tripleo-heat-templates \
--stack overcloud \
--libvirt-type kvm \
--ntp-server clock.redhat.com \
--control-scale 1 \
--control-flavor controller \
--compute-scale 1 \
--compute-flavor compute \
--disable-validations \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/deployed-server-environment.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/deployed-server-bootstrap-environment-centos.yaml \
-r /usr/share/openstack-tripleo-heat-templates/deployed-server/deployed-server-roles-data.yaml \
-e /home/stack/virt/network/deployed_server_portmap.yaml \
-e /home/stack/virt/config_lvm.yaml \
-e /home/stack/virt/network/network-environment.yaml \
-e /home/stack/virt/hostnames.yml \
-e /home/stack/virt/debug.yaml \
--log-file overcloud_deployment_86.log


