/etc/yum.repos.d/mongodb.repo:
    file.managed:
        - source: salt://mongodb3/mongodb.repo
        - user: root
        - group: root
        - mode: 644
        - template: jinja

mongodb-org:
    pkg.installed:
        - require:
            - file: /etc/yum.repos.d/mongodb.repo
    service:
        - name: mongod
        - running
        - enable: True
        - reload: True
        - require:
            - pkg: mongodb-org
            
