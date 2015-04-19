rabbitmq-server:
    pkg:
        - installed
        - enablerepo: remi
    service:
        - running
