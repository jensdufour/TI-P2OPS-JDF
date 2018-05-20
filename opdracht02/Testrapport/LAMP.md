# Testrapport opdracht 2: centos7+LAMP

Uitvoerder(s) test: Tim Grijp        
Uitgevoerd op: 25/03/2018  
Github commit:  COMMIT HASH


* Vagrant up installeert de VM succesvol
* Vagrant SSH geeft toegang tot het systeem
* Het commando 'service httpd status' geeft  als output: <br/>
Active: active (running) since Sun 2018-03-25 00:01:47 UTC; 3min 9s ago <br/>
dus dit is in orde
* Met  het password 'lampstack' wordt er toegang gegeven en bij uitvoer van commando 'status' wordt op basis van de output bevesigt dat de databank actief is.
* het commando php --version geeft volgende output:
PHP 5.4.16 (cli) (built: Mar  7 2018 13:34:47) <br/>
Copyright (c) 1997-2013 The PHP Group <br/>
Zend Engine v2.4.0, Copyright (c) 1998-2013 Zend Technologies <br/>
* Het lukt om met een PHP script data naar de sql database 'lampstack' weg te schrijven.
* Via de hostmachine surfen naar 192.168.56.10 geeft de site http://192.168.56.10/wp-admin/setup-config.php weer.
