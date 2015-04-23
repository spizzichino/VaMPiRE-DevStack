npm:
  pkg.installed
  
npm-packages:
  npm.installed:
    - require:
        - pkg: npm
    - names:
        - bower
        - grunt-cli
        - socket.io
#        - redis-commander

        