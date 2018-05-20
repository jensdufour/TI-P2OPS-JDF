# Testplan opdracht 2: LAMP



Auteur(s) testplan: Quinten De Bruyne

### Automatische installatie van CentOs op een VM met nodige onderdelen voor LAMP.  
* Zorg dat de LAMP folder zich ergens op jouw harde schijf bevindt.
* Open een Bash terminal, bijvoorbeeld Git bash, als administrator.  
* Ga naar het juiste path waarin het vagrantfile zich bevindt, dit kan met het commando ` cd `  
* Geef commando `vagrant up ` in. Dit zal zorgen dat de virtuele machine wordt gedownload en geïnstalleerd, alsook de nodige services en andere programma's dankzij het voorziene script.   

### Testen dat de benodigde service's zijn geïnstalleerd.   
* Geef commando `vagrant ssh ` in. Dit zal zorgen dat er een SSH verbinding tot stand komt. Je zal nu kunnen werken op jouw hostmachine in jouw bash terminal alsof je een terminal van de virtuele machine hebt geopend.  
* Met het commando ` service httpd status ` kan je zien of jouw Apache service loopt, dit zou Active moeten zijn.  
* Met het commando ` mysql -u root -p ` en dan bevestigen met enter en het wachtwoord lampstack ingeven. Nu geef je het commando ` status ` in en krijg je bevestiging dat de mysql active is en nog enkele andere gegevens.  
* Met het commando ` php --version ` kan je tot slot zien welke versie van PHP er op jouw linux machine draait.  


### Testen met klein PHP scriptje en HTML bestand of er naar databank kan geschreven worden.  

* Er zijn in de root van de LAMP folder drie bestanden die verplaatst dienen te worden naar /var/www/html. Deze bevinden zich in de gedeelde map op de virtuele machine in /vagrant.  
* Ga naar deze map met ` cd /vagrant `.  
* Verplaats de bestanden met volgende commando's:  
    * ` cp contact.php /var/www/html `  
    * ` cp get_responste.php /var/www/html `  
    * ` cp config.php /var/www/html `  
* Ga op de hostmachine naar 192.168.56.10/contact.php  
* Geef een naam en e-mailadres in.  
* Je kan nu controler op de server of dit weldegelijk aan de databank is toegevoegd: 
    * Commando ` mysql -u root -p ` en vervolgens wachtwoord lampstack ingeven brengt je naar de mysql omgeving.  
    * Selecteer de database lampstack met ` use Lampstack;`.  
    * `Select * from Users;` zou de records moeten weergeven. Als alles goed is gegaan, zie je jouw opgegeven naam en e-mailadres staan.  

