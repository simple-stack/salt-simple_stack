/srv/simple-stack/install-controller-node.sh /srv/simple-stack/environment.json | tee /tmp/install-openstack.log:
  cmd.run:
    - onlyif: test -f /srv/simple-stack/environment.json
    - cwd: /srv/simple-stack
    - unless: test -d /opt/stack/nova
    - user: root
    - shell: /bin/bash
    - require:
      - file: /srv/simple-stack/environment.json
      - file: /srv/simple-stack/install-controller-node.sh
      - git: simple_stack_clone
