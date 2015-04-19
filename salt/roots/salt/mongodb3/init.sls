/etc/yum.repos.d/mongodb-org.repo:
    file.managed:
        - source: salt://mongodb-org/mongodb-org.repo
        - user: root
        - group: root
        - mode: 644
        - template: jinja

mongodb-org:
    pkg.installed:
        - require:
            - file: /etc/yum.repos.d/mongodb-org.repo
    service:
        - name: mongod
        - running
        - enable: True
        - reload: True
        - require:
            - pkg: mongodb-org
            
