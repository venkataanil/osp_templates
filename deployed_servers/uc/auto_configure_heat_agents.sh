#!/bin/bash
export OVERCLOUD_ROLES="ControllerDeployedServer ComputeDeployedServer"
export ControllerDeployedServer_hosts="192.168.24.14"
export ComputeDeployedServer_hosts="192.168.24.15"
/usr/share/openstack-tripleo-heat-templates/deployed-server/scripts/get-occ-config.sh
