# Opdracht 1: Basisconfiguratie switch

Auteur(s): Quinten De Bruyne

## Uitwerking

- Neem een console kabel en sluit deze aan op de consolepoort van Switch 1 en de computer User 1, doe respectievelijk hetzelfde voor Switch 2 en computer User 2.
- `enable`
- `configure terminal`
- `hostname ASw-1`
- `line console 0`
- `login`
- `password 8ubRu`
- `exit`
- `line vty 0 4`
- `login`
- `password 8ubRu`
- `exit`
- `enable secret C9WrE`
- `service password encryption`
- `banner motd #warning#`

Nu hebben we de hostnaam ingesteld voor switch 1, de telnet en console lines beveiligd met een wachtwoord dat geëncrypteerd is, het wachtwoord voor de privileged mode en een message of the day banner. Nu kan je exact hetzelfde doen voor Switch 2, enkel de hostname is anders namelijk ASw-2. 

Op Switch 2 in privileged mode (enable en aanmelden met wachtwoord C9WrE):
- `configure terminal`
- `interface vlan 1`
- `ip address 172.16.5.40 255.255.255.0`
- `no shutdown`

Vervolgens doen we net hetzelfde op Switch 1, enkel is hier het ip address 172.16.5.35
Voor de ip instellingen van de NIC van de desktop zal dit verschillen van besturingssysteem. Op Windowsssystemen zal je naar configuratiescherm moeten, vervolgens de adapterinstellingen voor internet aanpassen, tcp/ip 4 selecteren, vervolgens kiezen voor een statische instelling en ip adres en subnetmask ingeven.

Tot slot moeten we op elke Switch nog de huidige configuratie kopiëren naar het niet-volatiel RAM geheugen.
Dit doen we in privileged exec mode met `copy running-config startup-config`
Als alles goed is verlopen kunnen we nu adhv de addressing table naar van elke computer naar elke andere computer en elke switch pingen.
Dit kunnen we doen in een command prompt met het commando `ping 172.16.5.60`. 




