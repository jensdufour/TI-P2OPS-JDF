# InstallatieProcedure: MDT

1: Installateer benodigde software  

    a. Vagrant installeren

    Vagrant gebruiken we om de scripts te laten uit te voeren en een virtuele machine te generen.
    Je kan vagrant downloaden met de volgende link: https://www.vagrantup.com/downloads.html

    b.Virtualbox installeren
    Virtual box hebben we nodig voor een virutele machine te kunnen laten generen door vagrant.
    Deze kan je downloaden met de volgende link: https://www.virtualbox.org/wiki/Downloads.

Part 2: Script uitleg

 In de vagrantfile worden de instellingen voor de virtuele machine meegegeven.
 Allereerst definieren we welke box er wordt opgehaald bij Vagrant.
 Hier kiezen we voor een schone installatie van Windows Server 2016.
 Hierna gaan we aan de hand van het "provision"-commando onze PowerShell-scripts laten uitvoeren op de virtuele machine.
 Deze installeren de benodigde software voor een MDT.

Part 3: Automatische configuratie virutele machines


```ShellSession
$ vagrant up
```

Het commado hierboven zal de virtuele machine aanmaken en dankzij het "provision"-commando worden onze PowerShell-scripts automatisch uitgevoerd.
Dit kan even duren.

 Bronnen:
 https://www.vagrantup.com/docs/
 https://atlas.hashicorp.com/boxes/search

 Auteur(s): Jens Du Four
