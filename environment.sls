/srv/simple-stack/environment.json:
  file.managed:
    - source: salt://simple_stack/envs/test.jinja
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        admin_token: {{ pillar['simple_stack']['admin_token'] }}
        service_password: {{ pillar['simple_stack']['service_password'] }}
    - require:
      - git: simple_stack_clone
