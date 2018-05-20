#Installing Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Installing MDT dependencies
# prerequirements
new-netipaddress -addressfamily ipv4 -interfacealias "Ethernet 2" -ipaddress 192.168.56.10 -prefixlength 24 -defaultgateway 192.168.56.1
echo "netipaddres static = done"
Function ADDS {
echo "installing widows features"
install-windowsfeature -name AD-Domain-Services -includeManagementTools
echo done!!

echo "importing module"
Import-Module ADDSDeployment
echo done!!

# forest for ADDS
echo "installing addsforest"
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath “C:\Windows\NTDS” -DomainMode “WinThreshold”
-DomainName “confidas.local”
-DomainNetbiosName “confidas”
-ForestMode “WinThresHold”
-InstallDns:$true
-LogPath “C:\Windows\NTDS”
-NoRebootOnCompletion:$false
-SysvolPath “C:\Windows\SYSVOL”
-Force:$true
echo done!!
}
Rename-Computer -NewName "DC1" 
ADDS
restart-computer -force


install-windowsfeature -name dhcp -includemanagementTools

install-windowsfeature -name wds -includeManagementTools -restart
choco install -y -r windows-adk
choco install -y -r mdt



