/etc/yum.repos.d/MariaDB.repo:
    file.managed:
        - source: salt://mariadb10/MariaDB.repo
        - user: root
        - group: root
        - mode: 644
        - template: jinja

MariaDB-client:
    pkg.installed:
        - enablerepo: mariadb

/etc/my.cnf.d/tokudb.cnf:
    file.sed:
        - before: ^#plugin-load-add=ha_tokudb.so
        - after: plugin-load=ha_tokudb.so

#MariaDB-tokudb-engine:
#    cmd.run:
#        - name: sed -i -e 's~#plugin-load-add=ha_tokudb.so~plugin-load=ha_tokudb.so~g' /etc/my.cnf.d/tokudb.cnf
#        - require:
#            - file: /etc/my.cnf.d/tokudb.cnf

MariaDB-server:
    pkg.installed:
        - enablerepo: mariadb
        - require:
            - file: /etc/yum.repos.d/MariaDB.repo
    service:
        - name: mysql
        - running
        - enable: True
        - reload: True
