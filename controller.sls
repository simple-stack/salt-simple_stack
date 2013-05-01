include:
  - simple_stack.clone_repo
  - simple_stack
  - simple_stack.environment

install_controller_node_sh:
  cmd.run:
    - name: '/srv/simple-stack/install-controller-node.sh /srv/simple-stack/environment.json | tee /tmp/install-openstack.log'
    - onlyif: test -f /srv/simple-stack/environment.json
    - cwd: /srv/simple-stack
    - unless: test -d /opt/stack/nova
    - user: root
    - shell: /bin/bash
    - require:
      - file: environment_json
      - file: install_controller_node_upload
      - git: simple_stack_clone

