# InstallatieProcedure: WISA  

1: Installateer benodigde software  

    a. Vagrant installeren

    Vagrant gebruiken we om de scripts te laten uit te voeren en een virtuele machine te generen.
    Je kan vagrant downloaden met de volgende link: https://www.vagrantup.com/downloads.html

    b.Virtual box installeren
    Virtual box hebben we nodig voor een virutele machine te kunnen laten generen door vagrant.
    Deze kan je downloaden met de volgende link: https://www.virtualbox.org/wiki/Downloads.

Part 2: Script uitleg

 In de vagrantfile worden de instellingen voor de virtuele machine meegegeven.
 Allereerst definieren we welke box er wordt opgehaald bij Vagrant.
 Hier kiezen we voor een schone installatie van CentOS 7.
 Hierna gaan we aan de hand van het "provision"-commando onze bash-scripts laten uitvoeren op de virtuele machine.
 Ook stellen we hier de juiste netwerkconfiguratie in zodat onze WordPress testomgeving bereikbaar zou zijn.
 Deze installeren de benodigde software voor een LAMP-stack.
 Het eerste script dat we geschreven hebben installeert de LAMP-stack.
 Het tweede script maakt de tabel in MySQL en installeert WordPress zodat wij zien dat alles werkt.

Part 3: Automatische configuratie virutele machines


```ShellSession
$ start_script.sh
```

Het commado hierboven zal de virtuele machine aanmaken en dankzij het "provision"-commando worden onze Bash-scripts automatisch uitgevoerd.
Hierna zal aan de hand van Vagrant SSH er ook connectie gemaakt worden met de virtuele machine

 Bronnen:
 https://www.vagrantup.com/docs/
 https://atlas.hashicorp.com/boxes/search
 https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-centos-7
 
 Auteur(s): Jens Du Four
