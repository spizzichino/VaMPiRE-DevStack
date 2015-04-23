# VAMPiRE DevStack

An initial Vagrant + VirtualBox development box running on CentOS 6.5 for my LEMP and MEAN apps

## Software

* [V] Vagrant, Virtualbox (of course)
* [A] AMQP
* [M] MongoDB 3.0, MariaDB 10 (with TokuDB Engine)
* [P] PHP 5.4, PostgreSQL 9.4
* [I] ?
* [R] Redis 2.8, RabbitMQ
* [E] Nginx, Express

## Global NodeJS packages installed with 

    # npm install -g

* bower
* grunt-cli
* socket.io

## Configuration files

* nginx supports virtual hosts in /vagrant/sites/<domain>.local. Define a local host name in your /etc/hosts as
  127.0.0.1     <domain>.local

## Provision with Salt

Whenever SaltStack configuration files in salt/roots/{pillar,salt} are changed, the box can be re-provisioned from the host with:

  vagrant provision

Or from within the CentOS shell, with the command:

  salt-call state.highstate

