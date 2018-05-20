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
 Hier kiezen we voor een schone installatie van Windows Server 2016.
 Hierna gaan we aan de hand van het "provision"-commando onze PowerShell-scripts laten uitvoeren op de virtuele machine.
 Deze installeren de benodigde software voor een WISA-stack.
 Het eerste script dat we geschreven hebben installeert IIS webserver en Chocolatery.
 Met Chocolatery installeren we verder de MySQL-server en ASP.NET.

Part 3: Automatische configuratie virutele machines


```ShellSession
$ vagrant up
```

Het commado hierboven zal de virtuele machine aanmaken en dankzij het "provision"-commando worden onze PowerShell-scripts automatisch uitgevoerd.
Dit kan even duren.

Part 4: dotnet SDK installeren

* Voer vanuit Git Bash volgend commando uit 'vagrant ssh'
* Voer vanuit Git Bash volgend commando uit 'cd c:\vagrant\scripts'
* Voer vanuit Git Bash volgend commando uit 'powershell.exe'
* Voer vanuit Git Bash volgend commando uit '.\SDK.ps1 -Channel LTS'


 Bronnen:
 https://www.vagrantup.com/docs/
 https://atlas.hashicorp.com/boxes/search
 Deploying and Managing Active Directory with Windows PowerShell: Tools for cloud-based and hybrid environments - Charlie Russel
 https://stackoverflow.com/questions/28582116/how-to-install-iis-8-through-code

 Auteur(s): Jens Du Four
