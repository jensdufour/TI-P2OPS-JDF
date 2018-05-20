# Testplan opdracht 2: LAMP



Auteur(s) testplan: Jens Du Four

### Automatische installatie nodige onderdelen voor LAMP.
* Verbind met de VPS via een SSH-Client.
* Clone de Githubrepositorie met het installatiescript (https://github.com/HoGentTIN/p2ops-g03.git)
* Ga naar het juiste path waarin het script zich bevindt, dit kan met het commando ` cd `
* Start het script config_script.sh zodat de nodige services en andere programma's geinstalleerd worden.

### Testen dat de benodigde service's zijn geïnstalleerd.
* Met het commando ` service httpd status ` kan je zien of jouw Apache service loopt, dit zou Active moeten zijn.
* Met het commando ` mysql -u root -p ` en dan bevestigen met enter en het wachtwoord lampstack ingeven. Nu geef je het commando ` status ` in en krijg je bevestiging dat de mysql active is en nog enkele andere gegevens.
* Met het commando ` php --version ` kan je tot slot zien welke versie van PHP er op jouw linux machine draait.
* Surf naar het IP-adress van de VPS om de werkende WordPress-installatie te initialiseren.
