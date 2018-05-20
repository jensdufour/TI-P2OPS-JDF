# Testplan opdracht 2: Wisa



Auteur(s) testplan: Tim Grijp
\*
## installeren van de windows server

* Zorg dat de WISA folder zich ergens op jouw harde schijf bevindt.
* Open een Bash terminal, bijvoorbeeld Git bash, als administrator.  
* Ga naar het juiste path waarin het vagrantfile zich bevindt, dit kan met het commando ` cd `
* Geef commando `vagrant up ` in. Dit zal zorgen dat de virtuele machine wordt gedownload en geïnstalleerd, alsook de nodige services en andere programma's dankzij het voorziene script.
* U zou nu in virtual machine een windows 2016 machine moeten hebben.
* Gebruik nu het commando 'vagrant ssh' voor volgende stappen te kunnen controleren
## Controle IIS
* geef powershell.exe in voor access tot powershell
* Dit kan met het commando iisreset /status
* w3svc moet actief zijn.
* Indien dit niet het geval is kan je de service starten met "iisreset /start"

## Controle installatie SQLServer

Het ingeven van het commando "sqlcmd -?" moet de versie van de SQLServer weergeven in volgend formaat:

Microsoft (R) SQL Server Command Line Tool
Version 14.0.1000.169 NT


 ## Controle of SQLServer toegankelijk is

 * Open MicroSoft SQL Server Management Studio 17 (https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-2017)
 * Maak hier connectie met server name: 192.168.56.10, Authentication: SQL Server Authentication, Login: sa, Paswoord:#SAPassword!
 * Indien het programma geen foutmelding geeft is de SQLServer succesvol geinstalleerd en gestart.


## Controleer of je ASP.net hebt en of de versie 4.6.2 of nieuwer is.
* De output van het volgende commando moet gelijk zijn aan 'True'
* Get-ChildItem "HKLM:SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\" | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge 394802}
