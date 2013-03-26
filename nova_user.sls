nova:
  group.present:
    - system: True
  user.present:
    - system: True
    - fullname: nova
    - home: /var/lib/nova
    - shell: /bin/bash
    - require:
      - group: nova
  file.managed:
    - name: /var/lib/nova/.ssh/id_rsa
    - source: salt://simple_stack/templates/id_rsa.jinja
    - template: jinja
    - mode: 600
    - user: nova
    - group: nova
    - require:
        - user: nova

nova_ssh_authorized_keys:
  file.managed:
    - name: /var/lib/nova/.ssh/authorized_keys
    - source: salt://simple_stack/templates/authorized_keys.jinja
    - template: jinja
    - mode: 600
    - user: nova
    - group: nova
    - require:
        - user: nova

nova_ssh_fix_perm:
  file.directory:
    - name: /var/lib/nova/.ssh
    - mode: 700
    - user: nova
    - group: nova
    - require:
      - user: nova

nova_ssh_config:
  file.managed:
    - name: /var/lib/nova/.ssh/config
    - source: salt://simple_stack/templates/ssh_config.jinja
    - template: jinja
    - mode: 644
    - user: nova
    - group: nova
    - require:
      - user: nova
