# Testplan opdracht 2: SAP



Auteur(s) testplan: Quinten De Bruyne

* Zorg dat de folder zich ergens op jouw harde schijf bevindt.
* zorg dat je een src map hebt met de te installeren files die zich in de SAP folder bevind
* Open een Bash terminal, bijvoorbeeld Git bash, als administrator.  
* Ga naar het juiste path waarin het vagrantfile zich bevindt, dit kan met het commando ` cd `  
* Geef commando `vagrant up ` in. Dit zal zorgen dat de virtuele machine wordt gedownload en geïnstalleerd, en deze met de juiste packages en instellingen worden voorzien.  
* Geef commando `vagrant ssh ` in. Deze zal sshen in het openSUSE besturingssysteem.  
* Download en installeer de SAP gui op jouw host computer. Vervang de huidige install.sh door deze vanop github.
* Ga naar de map waar je SAP hebt geïnstalleerd en open SAP logon.  
* Nu zal je een nieuwe verbinding moeten aanmaken met jouw lokale server. We gaan hiervoor als volgt te werk:
    * Klik op het icoon waarop je een blad papier ziet.
    * Op het eerste verder moet je niets aanpassen en kan je gewoon op volgende klikken.
    * Op het volgende scherm moet je enkele dingen invullen; als omschrijving kan je zelf een toepasselijke naam invullen. Als applicatie server vul je
127.0.0.1 in, het instantienummer is 00 en het systeem-ID is NPL. Klik vervolgens op voltooien.  
* We zijn nu klaar om aan te melden op de SAPserver. Selecteer jouw net aangemaakte verbinding en klik op Aanmelden.  
* Instancenumber staat op 001, behoud dit.  
* Gebruikersnaam is SAP* en het wachtwoord is Appl1ance en meld je aan.
Nu zie je de mogelijke optie's binnen SAP Easy Access wat er op wijst dat alles goed is en je aan de slag kan.  
