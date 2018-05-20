#!/bin/bash

#disable firewall??
sudo /sbin/SuSEfirewall2 off

#installeren daemon uuidd
sudo zypper --non-interactive install uuidd
sudo service uuidd start

#hostname veranderen en domein toewijzen
sudo hostname vhcalnplci
sudo rcnetwork restart
sudo /bin/bash -c 'echo -e "10.0.2.15 vhcalnplci vhcalnplci.dummy.nodomain" >> /etc/hosts'
