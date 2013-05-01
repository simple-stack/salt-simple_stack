git:
  pkg:
    - latest

python-pip:
  pkg:
    - latest

simple_stack_clone:
  git.latest:
    - name: {{ pillar['git_simple_stack']['url'] }}
    - target: /srv/simple-stack
    - rev: {{ pillar['git_simple_stack']['rev'] }}
    - force: True
    - require:
      - pkg: git
      - pkg: stack_needed_pkgs
      - pkg: python-pip
