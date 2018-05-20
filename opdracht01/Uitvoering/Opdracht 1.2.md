# Uitvoering Opdracht 1.2

Auteur(s): Jens Du Four

## Uitwerking

**Configure PC hosts**

- Stel de gepaste IP in via de IP Configurator

**Terminal: Configure basic switch settings**

- enable
- configure terminal
- hostname s1
- no ip domain-lookup
- enable secret class
- line con 0
- password cisco
- login
- exit
- banner motd #
- Unauthorized access is strictly prohibited and prosecuted to the full extent of the law. #
- exit

Nu hebben we de hostnaam ingesteld voor switch S1, een wachtwoord en een message of the day banner ingesteld. Nu kan je exact hetzelfde doen voor Switch 2, enkel de hostname is anders namelijk S2. 

**Save configuration**

- copy running-config startup-config


