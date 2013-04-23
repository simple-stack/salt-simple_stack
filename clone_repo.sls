simple_stack_clone:
  git.latest:
    - name: {{ pillar['git_simple_stack']['url'] }}
    - target: /srv/simple-stack
    - force: True
    - require:
      - pkg: stack_needed_pkgs
