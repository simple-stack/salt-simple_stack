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
  ssh_auth.present:
    - user: nova
    - names:
        - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClzxTsw0X6Ssa/quMd4Lt0GDB/k/w+yKQwWP/sXjP8HHg7m+ME/1xvBqdrMfAcJuxyIJ4SMsVsT8JDDyTNh7plgyMbAXbClUlzcTXd5UAdXeKTktGj03ddONUlGAjf7ql9TqvjO8ehsxzEWPWaiI3hL9Tbx/JQk/M7S+tkl0IelAdQfshOKfe0NoMlW5X7/pKZ9pEso1EblO35NewB7dX4Hqyq1NO//gRonISFmmhKUwL8yFVy49C/dxYCVKqsxSAxsJ4VGTO8KTLQAMAyW5TI+J6w7hznjiy3e7Cxosxx7CXRWBHfNaJFZPPCIMKEDCB58EP3KCVponjai+cHODv5 nova@synchost
    - require:
        - user: nova
  file.managed:
    - name: /var/lib/nova/.ssh/id_rsa
    - source: salt://simple_stack/templates/id_rsa.jinja
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
