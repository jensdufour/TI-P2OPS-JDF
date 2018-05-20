# InstallatieProcedure: WISA  

Part 1: Connecteren met VPS

    Maak aan de hand van software zoals Putty of SmarTTY connectie met de VPS. De veiligste methode is gebruik te maken van een OpenSSH key.
    Dit wordt door veel hosting providers standaard ondersteund zoals DigitalOcean.

Part 2: Installatiescripts uitvoeren

  Eerst en vooral clonen we onze Githubrepositorie (https://github.com/HoGentTIN/p2ops-g03.git) en navigeren we naar de juiste folder.

  ```ShellSession

  $ git clone https://github.com/HoGentTIN/p2ops-g03.git
  $ cd p2ops-g03/opdracht02/LAMP
  $ sh config_script.sh
  ```
 Aan de hand van dit script installeren we de benodigde software voor een LAMP-stack.

Part 3: Configuratie WordPress

Er vanuit gaande dat het vorige script zonder problemen is verlopen en de vorige folder niet verlaten is, kunnen we volgend commando uitvoeren.

```ShellSession
$ sh test_script.sh
```

Het commado hierboven zal WordPress installeren.
Hierna kunnen we de installatie testen door naar het IP van de VPS te gaan.

 Bronnen:
 https://www.vagrantup.com/docs/
 https://atlas.hashicorp.com/boxes/search
 https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-centos-7

 Auteur(s): Jens Du Four
