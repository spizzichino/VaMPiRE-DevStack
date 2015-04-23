/etc/nginx/conf.d/default.conf:
    file.managed:
        - source: salt://nginx/default.conf
        - user: root
        - group: root
        - mode: 644
        - template: jinja

/etc/nginx/default.d/php-fpm.conf:
    file.managed:
        - source: salt://nginx/php-fpm.conf
        - user: root
        - group: root
        - mode: 644
        - template: jinja

nginx:
    pkg:
        - installed
    service:
        - running
        - enable: True
        - reload: True
