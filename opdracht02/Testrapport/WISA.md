# Testrapport opdracht 2: WISA

Uitvoerder(s) test: Jens Du Four
Uitgevoerd op: 05/05/2018
Github commit:  COMMIT HASH

## installeren van de windows server

* Het commando 'vagrant up' maakt een VM aan met Windows Server en voert de provisioning scripts hierop uit.
* Vagrant SSH geeft toegang tot een SSH shell
## Controle installatie IIS

* powershell.exe start een PowerShell-sessie
* iisreset /status geeft als output:

Status voor Windows Process Activation Service ( WAS ) : Wordt uitgevoerd
Status voor World Wide Web Publishing-service ( W3SVC ) : Wordt uitgevoerd

Dit betekent dat de IIS-service succesvol is geinstalleerd en gestart.

## Controle installatie SQLServer
* Het commando 'sqlcmd -?' geeft als output:

Microsoft (R) SQL Server Command Line Tool
Version 14.0.1000.169 NT
Copyright (C) 2017 Microsoft Corporation. All rights reserved.

Dit betekent dat de SQLServer succesvol is geinstalleerd en gestart.


 ## Controle of SQLServer toegankelijk is

 * Na het installeren van  MicroSoft SQL Server Management Studio 17 loggen we in met onderstaande gegevens
 ![loginSQL](https://github.com/HoGentTIN/p2ops-g03/blob/master/weekrapport/img/loginSQL.png)
 * Maak hier connectie met server name: 192.168.56.10, Authentication: SQL Server Authentication, Login: sa, Paswoord:#SAPassword!
  ![succesSQL](https://github.com/HoGentTIN/p2ops-g03/blob/master/weekrapport/img/succesSQL.png)
 * Het programma geeft geen foutmeldingen, hieruit kunnen we besluiten dat de SQLServer succesvol geinstalleerd en gestart is.


## Controleer of je ASP.net hebt en of de versie 4.6.2 of nieuwer is.
* De output van het volgende commando moet gelijk zijn aan 'True'
* Get-ChildItem "HKLM:SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\" | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge 394802}

* De output van vorig commando is:

Get-ChildItem "HKLM:SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\" | Get-ItemPropertyValue -Name Release | ForEach-Object { $_ -ge 394802}
True
True

Hieruit kunnen we besluiten dat het .NET Framework correct geinstalleerd is voor versie 4.6.2 of nieuwer.
