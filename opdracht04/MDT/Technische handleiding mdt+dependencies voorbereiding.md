##
* voor het script MDT+dependencies installeer je eerst een Windows Server 2016: gebruik de win2016 versie van onthehub.
* zorg dat je 2 nic een host-only adapter is
* installeer de vm guest additions.
* maak een shared folder aan met de scripts in
* run dan  het script
* na uitvoering script moet je zelf manueel WDS configureren. open WDSMGMT.MSC -> Server -> voer wizard uit en druk next kies een installatie path -> respond to all clients -> geen image maken 
