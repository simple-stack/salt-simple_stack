stack_needed_pkgs:
  pkg.installed:
    - pkgs:
      - python-lxml
      - python-libxslt1

simple_stack_clone:
  git.latest:
    - order: 1
    - name: https://github.com/simple-stack/simple-stack.git
    - target: /srv/simple-stack
    - rev: master
    - runas: root
    - submodules: true

/srv/simple-stack/install-controller-node.sh:
  file.managed:
    - source: salt://simple_stack/bin/install-controller-node.sh
    - user: root
    - group: root
    - mode: 755
    - require:
      - git: simple_stack_clone

/srv/simple-stack/install-compute-node.sh:
  file.managed:
    - source: salt://simple_stack/bin/install-compute-node.sh
    - user: root
    - group: root
    - mode: 755
    - require:
      - git: simple_stack_clone
