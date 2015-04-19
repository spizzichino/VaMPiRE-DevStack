postgresql94-repo:
    cmd.run:
        - name: rpm -ih http://yum.postgresql.org/9.4/redhat/rhel-6-x86_64/pgdg-centos94-9.4-1.noarch.rpm
        - unless: test -f /etc/yum.repos.d/pgdg-94-centos.repo

postgresql94-server:
    pkg:
        - installed
        - enablerepo: pgdg94
    service:
        - name: postgresql-9.4
        - running
        - require:
            - cmd: postgresql94-initdb
#            - file: /var/lib/pgsql/9.4/data/pg_hba.conf

postgresql94-initdb:
    cmd.run:
        - name: service postgresql-9.4 initdb
        - unless: test -f /var/lib/pgsql/9.4/data/PG_VERSION
        - require:
            - pkg: postgresql94-server
