#!bin/bash

wget https://www.php.net/distributions/php-8.2.25.tar.gz
tar -xzf php-8.2.25.tar.gz
apt-get install -y build-essential
apt-get install -y autoconf
apt-get install -y bison
apt-get install -y re2c
apt-get install -y libxml++2.6-dev
apt install -y libsqlite3-dev
apt-get install -y libcurl3-openssl-dev
apt-get install -y libpng-dev
apt-get install -y libwebp-dev
apt-get install -y libjpeg-dev
apt-get install -y libfreetype-dev
apt-get install -y libonig-dev
apt-get install -y libsodium-dev
apt-get install -y libxslt-dev
apt-get install -y libzip-dev
apt-get install -y pecl
apt-get install -y autoconf
apt-get install -y librabbitmq-dev
pecl install amqp

./configure --with-openssl --with-zlib --with-curl --enable-exif --enable-gd --with-webp --with-jpeg --with-freetype --enable-mbstring --enable-pcntl --enable-soap --enable-sockets --with-sodium --with-xsl --with-zip 
make
make test
make install
