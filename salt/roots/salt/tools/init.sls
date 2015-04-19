mc:
    pkg.installed
    
joe:
    pkg.installed
    
dmidecode:
    pkg.installed

/etc/sysconfig/iptables.rules:
    file.managed:
        - source: salt://tools/iptables.rules
        - user: root
        - group: root
        - mode: 640
        - template: jinja

iptables-load:
    cmd.wait:
        - name: /sbin/iptables-restore < /etc/sysconfig/iptables.rules && /etc/init.d/iptables save
        - watch:
            - file: /etc/sysconfig/iptables.rules
