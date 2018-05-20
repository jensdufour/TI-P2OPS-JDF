# Testplan windows MDT software

Auteur(s): Tim Grijp

## controle of je kan connecteren met de MDT server

* Start de server waar MDT opstaat en open dan je lege vm en boot ermee vanop een lan -> f12

* netwerkshare -> \\DC1\DeploymentShare$
* credentials -> user: Administrator -> password: Winserver1 -> domainname: confidas
* foutboodschap mogelijk, maar druk gewoon op next
* als alles goed verloopt dan zal de MDT lite touch wizard openen.

# controle software

* Windows 10 moet geinstalleerd zijn dit kun je confirmeren met in de search bar "about your pc" te tikken hier staat welke windows je hebt.
* In program files(x86) zitten de applicaties -> java -> libre office -> adobe reader open ze om te controleren of ze werken.
* Controleer ook of windows automatic updates aanstaat in settings->update&security


