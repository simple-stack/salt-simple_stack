include:
  - simple_stack
  - simple_stack.clone_repo
  - simple_stack.environment

install_compute_node_upload:
  file.managed:
    - name: /srv/simple-stack/install-compute-node.sh
    - source: salt://simple_stack/bin/install-compute-node.sh
    - user: root
    - group: root
    - mode: 755
    - require:
      - pkg: stack_needed_pkgs
      - git: simple_stack_clone

install_compute_node_sh:
  cmd.run:
    - name: '/srv/simple-stack/install-compute-node.sh /srv/simple-stack/environment.json | tee /tmp/install-openstack.log'
    - onlyif: test -f /srv/simple-stack/environment.json
    - cwd: /srv/simple-stack
    - unless: test -d /opt/stack/nova
    - user: root
    - shell: /bin/bash
    - require:
      - git: simple_stack_clone
      - file: environment_json
      - file: install_compute_node_upload
