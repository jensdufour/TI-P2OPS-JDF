#!/bin/bash

databaseName='lampstack'
mysqlRootPass='lampstack'

mysql -uroot -p${mysqlRootPass} << EOF
CREATE TABLE IF NOT EXISTS $databaseName.Users (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL DEFAULT '',
  email varchar(120) NOT NULL DEFAULT '',
  country varchar(50) DEFAULT 'USA',
  password varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
) AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
EOF

#install wget server
yum install -y wget

#install wordpress server
cd ~
wget https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
sudo rsync -avP ~/wordpress/ /var/www/html/
mkdir /var/www/html/wp-content/uploads
sudo chown -R apache:apache /var/www/html/*
cd /var/www/html
cp /root/p2ops-g03/opdracht02/LAMP/wp-config.php wp-config.php
