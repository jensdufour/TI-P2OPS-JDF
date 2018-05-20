# Testplan kantoor 1 - Packet tracer

Auteur(s): Quinten De Bruyne

### Verifiëren van IP adressen.  
*Om te controleren welk ip adres er aan een bepaalde interface van een bepaald apparaat is toegewezen, kan je eenvoudigweg met de muis eventjes over het apparaat in packet tracer gaan. Hierop zal er een popup venstertje verschijnen met alle interfaces met ip adres.*
* Controleer of de FastEthernet0/0 van de router up is en IP adres 192.168.1.1 met subnetmask 255.255.255.0 (/24) is toegewezen.  
* Controleer of Printer1 en Printer2 respectievelijk IP adres 192.168.1.2 en 192.168.1.3 hebben.  
* Controleer of Server0 IP adres 192.168.1.4 heeft.  
* De andere eindapparaten (pc's, smartphones en tablets) maken gebruik van DHCP om dynamisch een ip adres toegewezen te krijgen. Controleer of dit inderdaad zo is.  
* Probeer vanuit de router te pingen naar minstens 1 pc, smartphone en tablet. Pingen kan je doen door naar de CLI tab van de router te gaan en in te loggen met het wachtwoord cisco en vervolgens `ping` gevolgd door het IP adres in te geven. Het IP adres heb je hierboven reeds bekeken.    
* Tot slot zullen we ook nog proberen pingen naar de twee printers en de server. Hun IP adressen vind je hierboven. 


### Controle of NAT ingesteld is op router
* Router#show ip nat statistics
* Kijk of de outside int s2/0 is en de inside f0/0 
* Kijk of de address range 209.165.200.226-209.165.200.240 is:
* Controleer de access-list die er op zit 
* controleer deze access-list met 'show access-list (naam)'
* kijk of deze access-list de addressen 192.168.1.0-192.168.1.255 toelaat 

Indien dit alles goed verlopen is, kunnen we er van uit gaan dat er netwerkverbinding over ons gehele netwerk mogelijk is.  
