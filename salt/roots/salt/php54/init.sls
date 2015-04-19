php54:
    pkg:
        - installed
        - enablerepo: remi
        - names:
            - php
            - php-cli
            - php-common
            - php-gd
            - php-mbstring
            - php-mcrypt
            - php-mysqlnd
            - php-pdo
            - php-pear
            - php-soap
            - php-xml
            - php-pecl-amqp
            - php-pecl-geoip
            - php-pecl-memcache
            - php-pecl-redis
            - composer
            
php-fpm:
    pkg:
        - installed
    service:
        - running
        