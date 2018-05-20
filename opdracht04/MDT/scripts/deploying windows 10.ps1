# make "deployment share" directory
New-Item -Path "C:\DeploymentShare" -ItemType directory
Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
new-PSDrive -Name "DS001" -PSProvider "MDTProvider" -Root "C:\DeploymentShare" -Description "MDT Deployment Share" -NetworkPath "\\DC1\DeploymentShare$" -Verbose | add-MDTPersistentDrive -Verbose

# make OS folder "Windows 10"

Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
new-item -path "DS001:\Operating Systems" -enable "True" -Name "Windows 10" -Comments "" -ItemType "folder" -Verbose

# make Task Sequence folder "Win 10 TS" 

Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
new-item -path "DS001:\Task Sequences" -enable "True" -Name "Win 10 TS" -Comments "" -ItemType "folder" -Verbose

# hiervoor zijn een paar voorbereidingen nodig. download een Win 10 iso 
# extract de iso file in een folder genaamd "os folder"
# convert de esd.install file die in os folder\sources zit naar een Wim.install file en steek deze wim.install file in de os folder\sources
# import OS win 10

Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
import-mdtoperatingsystem -path "DS001:\Operating Systems\Windows 10" -SourcePath "E:\os folder" -DestinationFolder "Windows 10 Home x64" -Verbose

#maakt een Task sequence met een paar voorgedefinieerde gegevens

Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
import-mdttasksequence -path "DS001:\Task Sequences\Win 10 TS" -Name "Windows 10" -Template "Client.xml" -Comments "password=Win10" -ID "WIN10" -Version "1.0" -OperatingSystemPath "DS001:\Operating Systems\Windows 10\Windows 10 Home in Windows 10 Home x64 install.wim" -FullName "Tim Grijp" -OrgName "p2ops-g03" -HomePage "about:blank" -AdminPassword "Win10" -Verbose

# update de deployment share
Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
update-MDTDeploymentShare -path "DS001:" -Verbose

#add Wim image to WDS image store
Import-WdsBootImage -Path "C:\DeploymentShare\Boot\LiteTouchPE_x64.wim" -skipverify

