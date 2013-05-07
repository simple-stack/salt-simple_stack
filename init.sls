stack_needed_pkgs:
  pkg.installed:
    - pkgs:
      - python-lxml
      - python-libxslt1

include:
  - simple_stack.clone_repo
  - simple_stack.environment

