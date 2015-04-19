rabbitmq:
    pkg:
        - name: rabbitmq-server
        - installed
        - enablerepo: remi
    service:
        - running        
