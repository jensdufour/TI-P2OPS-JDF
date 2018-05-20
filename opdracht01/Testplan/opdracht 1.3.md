# Opdracht 1: Basisconfiguratie switch



Auteur(s): Tim Grijp

## assign static ip information to the PC interfaces


**Configure the IP address, subnet mask, and defaultgateway settings on PC-A en PC-B.**

 - ga naar de juiste pc -> ip configuration >controleer de adressen.

## Configure the router.

**controleer of de router R1 noemt en datcisco het passwoord is en of er een motd is**

- log in op de router met passwoord cisco en dan zie je de naam in het prompt menu.

**d.Disable DNS lookup to prevent the router from attempting to translate incorrectly entered commands as though they were hostnames.**

- zorg dat je in priviliged mode bent of user exec mode 
- tpy "iet" en kijk of er dns lookup is als dit zo is moet dit disabled worden

**controle dat priviliged exec mode password "class" is** 

- enable
- password is "class"

**controle dat console password en vty password"cisco" is**

- ga naar configure terminal mode 
- line con 0 
- password is cisco
- exit
- line vty 0 4 
- password is cisco

**controleer adressen interfaces en of status is up**

- vanuit priviliged mode
- show ip interface brief
- 192.168.0.1 voor g0/0
- 192.168.1.1 voor g0/1

**controleer klok**

- vanuit priviliged exec mode
- show clock 

**ping 192.168.0.3**
