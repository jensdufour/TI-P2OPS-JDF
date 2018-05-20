# Opdracht 1: Basisconfiguratie switch

Auteur(s): Tim Grijp

## testing 

**Controleer namen van de switchen**

- ASw1 en ASw2

**controleer of het passwoord 8ubRu voor al de lijnen is**

- login op het apparaat

**controleer of het secret paswoord C9WrE is**

- ga naar privileged exec mode via enable

**controleer of clear text passwoorden encrypted zijn**

- kijken in de config file

**controleer of motd het woord 'warning' bevat**

- dit moet je zien vanaf het moment je de switch accest

**controleer ip addressen**

| Device  | interface | ip address | subnet mask   |
|---------|-----------|------------|---------------|
| ASw-1   | VLAN 1    | 172.16.35 | 255.255.255.0 |
| ASw-2   | VLAN 1    | 172.16.40 | 255.255.255.0 |
| User-01 | NIC       | 172.16.50 | 255.255.255.0 |
| User-02 | NIC       | 172.16.60 | 255.255.255.0 |

**controleer connectiviteit tussen de apparaten**
- ping 172.16.5.35
- en voor de andere addressen
- bekijk dit vanop beide apparaten




