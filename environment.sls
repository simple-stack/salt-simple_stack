environment_json:
  file.managed:
    - name: '/srv/simple-stack/environment.json'
    - source: salt://simple_stack/envs/environment.jinja
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        keystone_release: {{ pillar['simple_stack']['keystone_release'] }}
        nova_release: {{ pillar['simple_stack']['nova_release'] }}
        glance_release: {{ pillar['simple_stack']['glance_release'] }}
        cinder_release: {{ pillar['simple_stack']['cinder_release'] }}
        quantum_release:  {{ pillar['simple_stack']['quantum_release'] }}
        horizon_release:  {{ pillar['simple_stack']['horizon_release'] }}
        tempest_release:  {{ pillar['simple_stack']['tempest_release'] }}
        admin_token: {{ pillar['simple_stack']['admin_token'] }}
        service_password: {{ pillar['simple_stack']['service_password'] }}
        admin_password: {{ pillar['simple_stack']['admin_password'] }}
        interfaces_control: {{ pillar['simple_stack']['interfaces_control'] }}
        interfaces_public: {{ pillar['simple_stack']['interfaces_public'] }}
        database_password: {{ pillar['simple_stack']['database_password'] }}
        database_host: {{ pillar['simple_stack']['database_host'] }}
        openstack_public_address: {{ pillar['simple_stack']['openstack_public_address'] }}
        openstack_admin_address: {{ pillar['simple_stack']['openstack_admin_address'] }}
        openstack_internal_address: {{ pillar['simple_stack']['openstack_internal_address'] }}
        keystone_host: {{ pillar['simple_stack']['keystone_host'] }}
        rabbit_host: {{ pillar['simple_stack']['rabbit_host'] }}
        rabbit_password: {{ pillar['simple_stack']['rabbit_password'] }}
        glance_host: {{ pillar['simple_stack']['glance_host'] }}
        nova_host: {{ pillar['simple_stack']['nova_host'] }}
        nova_libirt_type: {{ pillar['simple_stack']['nova_libvirt_type'] }}
        nova_compute_driver: {{ pillar['simple_stack']['nova_compute_driver'] }}
        nova_networking_floating: {{ pillar['simple_stack']['nova_network_floating'] }}
        nova_networking_private: {{ pillar['simple_stack']['nova_network_private'] }}
        nova_networking_private_interface: {{ pillar['simple_stack']['nova_network_private_interface'] }}
        nova_networking_public_interface: {{ pillar['simple_stack']['nova_network_public_interface'] }}
        nova_network_flat_interface: {{ pillar['simple_stack']['nova_network_flat_interface'] }}
        nova_network_my_ip: {{ pillar['simple_stack']['nova_network_my_ip'] }}
        quantum_host: {{ pillar['simple_stack']['quantum_host'] }}
