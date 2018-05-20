# Uitvoering Opdracht 1.3

Auteur(s): Tim Grijp

## uitvoering

## assign static ip information to the PC interfaces

**Configure the IP address, subnet mask, and defaultgateway settings on PC-A en PC-B.**

- ga naar de juiste pc -> ip configuration > typ de juiste addressen in.

**ping PC-B from command promt window on PC-a**
- ping 192.168.0.3
- dit lukt niet omdat de router niet is geconfigureerd.

## Configure the router.

**a.Console into the router and enable privileged EXEC mode.**

- Router> enable

**b.Enter configuration mode.**

- Router# conf t

**c.Assign a device name to the router.**

- hostname R1

**d.Disable DNS lookup to prevent the router from attempting to translate incorrectly entered commands as though they were hostnames.**

- R1(config)# no ip domain-lookup

**e.Assign class as the privileged EXEC encrypted password.**

- R1(config)#enable secret class

**f.Assign cisco as the console password and enable login.**

- R1(config)# line con 0
- R1(config-line)# password cisco
- R1(config-line)# login
- R1(config-line)# exit

**g.Assign cisco as the VTY password and enable login.**
- R1(config)# line vty 0 4
- R1(config-line)# password cisco
- R1(config-line)# login
- R1(config-line)# exit

**h.Encrypt the clear text passwords.**


- R1(config)#service password-encryption

**i.Create a banner that warns anyone accessing the device that unauthorized access is prohibited.**

- R1(config)# banner motd #

**k.configure and activate both interfaces**
**j.Configure an interface description for each interface indicating which device is connected to it.**

- R1(config)# int g0/0
- R1(config-if)# description Connection to PC-B.
- R1(config-if)# ip address 192.168.0.1 255.255.255.0
- R1(config-if)# no shut
- idem int g0/1 maar ip address 192.168.1.1

**k.Save the running configuration to the startup configuration file.**

- R1# copy running-config startup-config

**m.Set the clock on the router.**

- R1# clock set 6:34:00 3 mar 2018

**n.Ping PC-B from a command promptwindow on PC-A. Were the pings successful? Why?**

- ping 192.168.0.3
- ja want de router is nu geconfigureert.

## Display Device Information

**What is the name of the IOS image that the router is running?**

- r1>show version
- System image file is "flash0:c1900-universalk9-mz.SPA.151-1.M4.bin

**How much DRAM memory does the router have?**

- DRAM configuration is 64 bits wide with parity disabled.

**How much NVRAM memory does the router have?**

- 255K bytes of non-volatile configuration memory.

**How much Flash memory does the router have?**

- 249856K bytes of ATA System CompactFlash 0 (Read/Write)

