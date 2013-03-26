# This is just some examples to show you what to add
# 

git_simple_stack:
  url: https://github.com/EntropyWorks/simple-stack.git
  rev: master

simple_stack:
  admin_token: yourtoken12345
  service_password: barfoo 
  admin_password: secrete 
  interfaces_control: em3  # Could be eth0 / Management IP is here
  interfaces_public: vlan100 # vlan or a physical nic / Public IP is here
  database_password: mysql_passwd 
  database_host: 10.8.0.2
  openstack_public_address: 203.0.213.2 # Public IP 
  openstack_admin_address: 10.8.0.2 # Internal IP for management
  openstack_internal_address: 10.8.0.2 
  keystone_host: 10.8.0.2
  rabbit_host: 10.8.0.2
  rabbit_password: guest
  glance_host: 10.8.0.2
  nova_host: 10.8.0.2
  nova_libvirt_type: kvm
  nova_network_floating: 203.0.213.64/26 # Public range of IP's VM's can use
  nova_network_private: 10.9.0.0/24 # Private IP range VM's get
  nova_network_public_interface: em3 
  nova_network_flat_interface: vlan200
  nova_network_my_ip: 203.0.213.2 # Your Public IP your real server
  cinder_host: 127.0.0.1
  quantum_host: 127.0.0.1  # Currently not using quantum btw
  nova_ssh_no_host_check: 10.8.0.* , compute*
  nova_ssh_private: |
    -----BEGIN RSA PRIVATE KEY-----
    # place you id_rsa private key for your nova user here
    -----END RSA PRIVATE KEY-----
  nova_ssh_public: # place your ssh public key for your nova user here
    
