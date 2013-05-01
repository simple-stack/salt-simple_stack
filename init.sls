include:
  - simple_stack.clone_repo
  - simple_stack.environment

stack_needed_pkgs:
  pkg.installed:
    - pkgs:
      - python-lxml
      - python-libxslt1

install_controller_node_upload:
  file.managed:
    - name: /srv/simple-stack/install-controller-node.sh
    - source: salt://simple_stack/bin/install-controller-node.sh
    - user: root
    - group: root
    - mode: 755
    - require:
      - pkg: stack_needed_pkgs
      - git: simple_stack_clone

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
