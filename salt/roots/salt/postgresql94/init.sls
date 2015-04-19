postgresql94-repo:
    cmd.run:
        - name: rpm -ih http://yum.postgresql.org/9.4/redhat/rhel-6-x86_64/pgdg-centos94-9.4-1.noarch.rpm
        - unless: test -f /etc/yum.repos.d/pgdg-94-centos.repo

postgresql94-server:
    pkg:
        - installed
        - enablerepo: pgdg94
    cmd.run:
        - name: service postgresql-9.4 initdb
        - unless: test -d /var/lib/pgsql/9.4/data
    service:
        - running        
