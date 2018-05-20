# Testplan windows MDT + dependencies

Auteur(s): Tim Grijp

## controle of volgende windows features installed zijn  met powershell:
* [x] get-windowsfeature -name dns
* [x] get-windowsfeature -name dhcp
* [x] get-windowsfeature -name AD-Domain-Services
* [x] get-windowsfeature -name WDS
* controleer ook de adds forest met ' get-ADForest
* [x] kijk of name 'confidas.local' is en de forestmode 'windows2016'
# controleer of WDS,dns en dhcp active is -> status=running
 * [x] get-service -name WDSService,dns,dhcp
# controleer adk
* [x] versie 10+

# controleer MDT
 * [x] workbench opent
