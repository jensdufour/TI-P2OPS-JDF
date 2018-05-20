# Testrapport opdracht 3: PacketTracer Kantoor 1

Uitvoerder(s) test: Jens Du Four        
Uitgevoerd op: 18/04/2018  
Github commit:  COMMIT HASH


* Het IP van FastEthernet0/0 bedraagt 192.168.1.1/24
* Printer 1 en 2 hebben respectievelijk als IP 192.168.1.4/24 en 192.168.1.3/24
* Server 0 heeft als IP 192.168.1.2/24
* Raspberry Pi heeft als IP 192.168.1.5/24
* Alle andere apparaten hebben een IP adres via DHCP toegewezen gekregen
* Dit zijn de resultaten van het pingen van respectievelijk: een PC en een laptop.
  "Router>ping 192.168.1.6
```
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.8, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/0/1 ms"
"Router>ping 192.168.1.8

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.13, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 3/12/21 ms"

* Dit zijn de resultaten van het pingen van respectievelijk de 2 printers, Raspberry Pi en de server.
"Router>ping 192.168.1.4

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.2, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/3/11 ms"
"Router>ping 192.168.1.3

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.3, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/3/13 ms"
"Router>ping 192.168.1.5

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.4, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/1/3 ms"
"Router>ping 192.168.1.2

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.4, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/1/3 ms"
```
* Controleren of router ook als DHCP server optreedt: Het commando "show ip dhcp binding" geeft als resultaat:
Router>show ip dhcp binding
```
IP address       Client-ID/              Lease expiration        Type
                 Hardware address
192.168.1.8      0090.2142.3CCD           --                     Automatic
192.168.1.6      0001.C931.15EC           --                     Automatic
192.168.1.7      0001.641C.71C8           --                     Automatic
192.168.1.9      0009.7C85.C042           --                     Automatic
```
* Controleren of router ook als DHCP server optreedt: Het commando "show ip dhcp pool poolOne" geeft als resultaat:
Router>show ip dhcp pool poolOne
```
Pool poolOne :
 Utilization mark (high/low)    : 100 / 0
 Subnet size (first/next)       : 0 / 0
 Total addresses                : 254
 Leased addresses               : 4
 Excluded addresses             : 5
 Pending event                  : none

 1 subnet is currently in the pool
 Current index        IP address range                    Leased/Excluded/Total
 192.168.1.1          192.168.1.1      - 192.168.1.254     4    / 5     / 254
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
       type generic, total addresses 15 , allocated 0 (0%), misses
```

* Controle Acces-lists
```
Router>enable
Password:
Router#sh access-list
Standard IP access list 1
    10 permit 192.168.0.0 0.0.255.255
```



 Uit deze resultaten kunnen we besluiten dat het netwerk correct is.
