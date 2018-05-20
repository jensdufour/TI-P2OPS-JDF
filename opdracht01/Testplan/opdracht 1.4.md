# Testplan taak 4: Lab - Basic static route configuration  
 
 Auteur: Tim Grijp 
    
    
### Task 1: Cable, Erase, and Reload the Routers.  
Step 1: Cable a network that is similar to the one in the topology diagram.  
* Kijk of de de drie pc's PC1, PC2 en PC3 heten.  
* Kijk of de drie routers R1, R2 en R3 heten.  
* Kijk of de de drie switches S1, S2 en S3 heten.
* Controleer dat de FastEthernet0 van PC1 met de FastEthernet0/1 van S1 met een copper-Straight trough cable verbonden is.  
* Herhaal bovenstaande stap met dezelfde kabel en poorten, maar dan van PC2 en S2, én voor PC3 en S3.  
* Controleer dat de FastEthernet 1/1 van S1 met de FastEthernet0/0 van R1 met een copper-straight trough cable verbonden is.  
* Herhaal bovenstaande stap met dezelfde kabel en poorten, maar dan voor S2 en R2, én S3 en R3.  
* controleer dat de seriële poort 2/0 van R1 met de seriële poort 2/0 van R2 verbonden is.  
* controller dat de seriële poort 3/0 van R2 met de seriële poort 2/0 van R3 verbonden is.  
          
          
Task 2: Perform Basic Router Configuratin  

Step 1: Use global configuration commands & Step 2: Configure the console and virtual line passwords.  
& Step 3: Add the loggin synchronous command to the console and virtual terminal lines.  
& Step 4: Add the exec-timeout command to the console and virtual terminal lines.

**controleer passwords**


- Ga naar de CLI van R1 en druk enter. 
- password is cisco
- enable
- password zou cisco moeten zijn
- show running-config
- controleer line password, vty password 
- zou cisco moeten zijn
- Herhaal dit ook voor R2 en R3!  
            
### Task 3: Interpreting Debug Output.  
Step 1: On R1 from privileged EXEC mode, enter the debug ip routing command.  
* Ga naar de CLI van R1 en druk enter.  
* Typ in enable en druk op enter.  
* Geef het wachtwoord in; met name cisco gevolgd door een enter.  
* Typ debug ip routing in en bevestig met een enter.  
* Normaal krijg je nu de melding "IP routing debugging is on" te zien.  
Step 2: Enter interface configuration mode for R1's LAN interface. 
**controleer fastethernet 0/0**
- vanuit priviliged exec of user

- kijk of er C     172.16.3.0 is directly connected, FastEthernet0/0 terug te vinden is.  

Step 5: Enter interface configuration mode for R1's WAN interface connected to R2.  
& Step 6: Enter the clock rate command on R1  
& Step 7: Enter the command necessary to ensure that the interface is fully configured.  
* In de CLI van R1, begeef je naar privileged EXEC mode
- show running-config
- serial2/0 moet volgende gegevens hebben
-  ip address 172.16.2.1 255.255.255.0
- clockrate 64000 //  dit zal niet weergegeven worden als deze stap zo is
- no shutdown //  dit komt overeen met geen shutdown boodschap in het geval dat dit "shutdown" weergeeft zou deze stap fout zijn


Step 8:  Stel de interfaces van R2 in.  
& Step 9: Enter the command necessary to ensure that the interface is fully configured. 
* Ga naar de CLI van R2, log je aan in privileged EXEC mode
- show running-config 
- serial 2/0 moet volgende gegevens hebben
- ip address 172.16.2.2 255.255.255.0 

  
  
Step 10: Enter the command to verify that the new route is now in the routing table for R1 en R2.  
* In CLI van R1, ga naar privileged EXEC mode en typ in show ip route en enter.  
* Verifieer of je twee verscillende poorten, namelijk Serial 2/0 en FastEthernet 0/0 verbonden zijn  
* Doe hetzelfde voor R2, hier moet echter slechts één poort gebruikt zijn, namelijk de Serial 2/0.  

### Task 4: Finish Configuring Router interfaces.
Step 1: Configure Remaining R2 interfaces.    
- Ga naar de CLI van R2, log je aan in privileged EXEC mode
- show running-config 
- fastethernet 0/0 moet volgende gegevens hebben 
- ip addres 172.16.1.1 255.255.255.0
- no shutdown
- serial 3/0 moet volgende gegevens hebben
- ip address 192.168.1.2 255.255.255.0
- no shutdown

  
Step 2: Configure R3 interfaces.  
- Ga naar de CLI van R3, log je aan in privileged EXEC mode
- show running-config 
- fastethernet 0/0 moet volgende gegevens hebben 
- ip addres 192.168.2.1 255.255.255.0
- no shutdown
- serial 2/0 moet volgende gegevens hebben
- ip address 192.168.1.1 255.255.255.0
- no shutdown


### Task 5: Configure IP Addressing on the Host PCs.  
Step 1, 2, 3: Configure the host PC1, PC2, PC3.
    
* Klik op PC1 en ga naar tabblad Desktop.  
* Klik op IP configuration. 
- controleer volgende gegevens
* Check Static aan.  
*  IP addres 172.16.3.10 
*  Subnet mask 255.255.255.0.  
*  Default Gateway 172.16.3.1.  
* Doe voor PC2 en PC3 hetzelfde, maar als IP address respectievelijk 172.16.1.10 en 192.168.2.10.  
* Als Subnet mask moet bij beiden weer 255.255.255.0 staan
* Als Default Gateway respectievelijk 172.16.1.1 en 192.168.2.1 staan
  
  
### Task 6: Test and Verify the configurations.  
Step 1 :Test connectivity.  
* Pingen kan je van computer naar computer doen. 
* Je kan naar de command line van de computer gaan, ping ipaddress en enteren. Uiteraard vervang je ipaddress door een ipaddress van de te pingen computer.   
* Je kan ook de default gateway pingen.  
* Normaal kan elke van de drie host PC's naar de default gateway pingen. 
* Ook kan je van R2 naar zowel R1 als R3 pingen.  
                     
### Task 7: Gather information  

Step 1: Check status of interfaces.  
* Geef in de CLI van elke router het commando show ip interface brief in.  
* Je krijgt een overzicht van de interfaces en kan zien welke een up state hebben.  
* Normaal moet je bij R2 twee seriele verbindingen (WAN) en één fastethernet (LAN) verbinding up hebben.  
* Normaal moet je bij R1 en R3 een seriele verbinding (WAN) en één fastethernet (LAN) verbinding up hebben.  
  
  
       
### Task 8: Configure a static route using a next-hop address.  
    
Step 1: View the routing table to verify the new static route entry.  
* Gebruik het commando show ip route op R3 zoals eerder.  
* Je ziet nu S    172.16.1.0 via 192.168.1.2  
* De S geeft aan dat dit static is.  
          
Step 2: On the R2 router, configure a static route to reach the 192.168.2.0 network.  
* Dit kan je eventueel in de configure terminal controleren met het commando show ip route.  
   
Step 3: Use ping to check connectivity between the host PC3 and the host PC2.    
* Je zal ontdekken dat dit lukt.  
        
### Task 9: Configure a Static route using an exit interface.  
Step 1: Configure a static route on R3.  
* In privileged EXEC mode van R3, typ conf term en hit enter.  
* Typ show ip route 172.16.2.0 255.255.255.0 serial 2/0.  
           
Step 2: View the routing table to verify the new static route entry.
* Met het commando show ip route kan je de routing table weergeven.  
* Je zou moeten opmerken dat er een nieuwe Static route is toegevoegd.  
* Gebruik het commando show running-config om te verifieren dat de static routes geconfigureerd zijn.  
           
             
Step 3: On R2, configure another static route.  
* In privileged EXEC mode van R2, typ conf t en hit enter.  
- show ip route
* Typ ip route 172.16.3.0 255.255.255.0 serial 2/0  
          
Step 4: View the routing table to verify the new static route entry.  
* Ondertussen weten we dat dit kan met het commando show ip route.  
          
          
### Task 10: Configure a default static route  
Step 1: configure the R1 reouter with a default route.  
* In privileged EXEC mode van R3, typ conf t en hit enter.  
* Typ ip route 0.0.0.0 0.0.0.0 172.16.2.2 in en hit enter.  
          
Step 2: View the routing table to verify the new static route entry.  
* Wederom commando show ip route gebruiken.  
         
                     
### Task 11: Configure a summary static route.  
Step 1: Configure the summary static route on the R3 router.  
* In privileged EXEC mode van R3, typ conf term en hit enter.  
* Typ ip route 172.16.0.0 255.255.252.0 192.168.1.2 in en hit enter.  

Step 2: Verify that the summary route is installed in the routing table.  
* Show ip route.  


Step 4: Verify that the routes are no longer in the routing table.  
* Show ip route als commando gebruiken.  

Step 5: Use ping to check connectivity between the host PC3 and PC1  

           
