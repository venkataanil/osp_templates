{ date; time openstack overcloud deploy --templates /usr/share/openstack-tripleo-heat-templates/  \
	-e /home/stack/templates/network-environment.yaml \
	-e /home/stack/docker_registry.yaml \
	--control-scale 3 \
	--compute-scale 0 \
	--ntp-server clock.redhat.com \
	--debug 2>&1; date; } | tee -a deploy_log.txt
	#-e /usr/share/openstack-tripleo-heat-templates/environments/docker.yaml \
	#-e /usr/share/openstack-tripleo-heat-templates/environments/docker-ha.yaml \
	#-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
	#-e /usr/share/openstack-tripleo-heat-templates/environments/disable-telemetry.yaml \
