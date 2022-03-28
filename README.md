# Docker Compose for LAMPP
## Stack of this docker:
- Server version: Ubuntu 20.04
- Apache 2.4
- PHP 7.4
- MySQL 5.7 (from image mysql:5.7)
- Adminer (from image adminer)

## Development tools
- Gulp
- Bower
- Git
- Composer
- Vim, Nano

## Install
- docker-compose up -d
- Access to Server: docker exec -ti lampp /bin/bash
- Add this line to your hosts file: 127.0.0.1 lampp.local

## Use
- Access to url: http://lampp.local
- Database management: http://localhost:8080
    + Database user: lampp
    + Database pass: lampp
    + Root password: root
- Your can change the config of apache/php in this file
    + /config/apache2.conf
    + /config/php.ini