{ date; time openstack overcloud deploy --templates -e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml -e templates/network-environment.yaml -e /home/stack/templates/overcloud_images.yaml -e /usr/share/openstack-tripleo-heat-templates/environments/disable-telemetry.yaml --control-scale 1 --compute-scale 1 --ntp-server clock.redhat.com  --debug 2>&1; date; } | tee -a deploy_log.txt
