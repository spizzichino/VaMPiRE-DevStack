rabbitmq-server:
    pkg:
        - installed
        - enablerepo: remi
    service:
        - dead
        - enable: False
        - reload: False

