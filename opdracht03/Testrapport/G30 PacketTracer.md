# Testrapport opdracht 3: PacketTracer Kantoor 1

Uitvoerder(s) test: Jens Du Four        
Uitgevoerd op: 18/04/2018  
Github commit:  COMMIT HASH


* Het IP van FastEthernet0/0 bedraagt 192.168.1.1/24
* Printer 1 en 2 hebben respectievelijk als IP 192.168.1.2/24 en 192.168.1.3/24
* Server 0 heeft als IP 192.168.1.4/24
* Alle andere apparaten hebben een IP adres via DHCP toegewezen gekregen
* Dit zijn de resultaten van het pingen van respectievelijk: een PC, een tablet en een gsm.
```
"Router>ping 192.168.1.8

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.8, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/0/1 ms"
"Router>ping 192.168.1.13

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.13, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 3/12/21 ms"
"Router>ping 192.168.1.16

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.16, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 3/8/15 ms"

* Dit zijn de resultaten van het pingen van respectievelijk de 2 printers en de server.
"Router>ping 192.168.1.2

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.2, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/3/11 ms"
"Router>ping 192.168.1.3

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.3, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/3/13 ms"
"Router>ping 192.168.1.4

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.4, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/1/3 ms"
```
* Controle of NAT ingesteld is op Router

```
Router>show ip nat statistics
Total translations: 0 (0 static, 0 dynamic, 0 extended)
Outside Interfaces: Serial2/0
Inside Interfaces: FastEthernet0/0
Hits: 0  Misses: 0
Expired translations: 0
Dynamic mappings:
-- Inside Source
access-list 1 pool NAT-POOL1 refCount 0
 pool NAT-POOL1: netmask 255.255.255.224
       start 209.165.200.226 end 209.165.200.240
       type generic, total addresses 15 , allocated 0 (0%), misses 0
      ```

* Controle Acces-lists

```
Router>enable
Password:
Router#sh access-list
Standard IP access list 1
    10 permit 192.168.0.0 0.0.255.255
    ```
