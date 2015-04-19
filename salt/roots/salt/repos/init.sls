epel:
    cmd.run:
        - name: rpm -ih http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
        - unless: test -f /etc/yum.repos.d/epel.repo

remi:
    cmd.run:
        - name: rpm -ih http://rpms.famillecollet.com/enterprise/6/remi/x86_64/remi-release-6.5-1.el6.remi.noarch.rpm
        - unless: test -f /etc/yum.repos.d/remi.repo

rpmforge:
    cmd.run:
        - name: rpm -ih http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
        - unless: test -f /etc/yum.repos.d/rpmforge.repo
