# Testrapport windows MDT + dependencies

## controle of volgende windows features installed zijn  met powershell: 
* get-windowsfeature -name dns 
* get-windowsfeature -name dhcp
* get-windowsfeature -name AD-Domain-Services
* get-windowsfeature -name WDS
* controleer ook de adds forest met ' get-ADForest
* kijk of name 'confidas.local' is en de forestmode 'windows2016' 
## controleer of WDS,dns en dhcp active is -> status=running
* get-service -name WDSService,dns,dhcp
## controleer adk 
* dit kan met dism of in control panel -> program features
* controleer de versie dit moet >=10 zijn

## controleer MDT 
* dit kan je zien in control panel-> programs and features, ke kan ook gewoon kijken of je de MDT workbench kan openen. dit zit in de startbalk van windows.


