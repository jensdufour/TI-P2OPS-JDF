#!/bin/bash

databaseName='lampstack'
mysqlRootPass='lampstack'
mysql -uroot -p${mysqlRootPass} <<EOF
use lampstack;
insert into Users (name)
values ('timdetester')
EOF
~
