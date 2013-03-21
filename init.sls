stack_needed_pkgs:
  pkg.installed:
    - pkgs:
      - python-lxml
      - python-libxslt1

simple_stack_clone:
  git.latest:
    - order: 1
    - name: {{ pillar['git_simple_stack']['url'] }}
    - rev: {{ pillar['git_simple_stack']['rev'] }}
    - target: /srv/simple-stack
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
