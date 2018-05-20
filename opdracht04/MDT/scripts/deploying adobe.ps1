# make folder
Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
new-item -path "DS001:\Applications" -enable "True" -Name "Adobe Reader" -Comments "" -ItemType "folder" -Verbose

# import adobe msi file

Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
import-MDTApplication -path "DS001:\Applications\Adobe Reader" -enable "True" -Name "adobe acrobat reader dc 15" -ShortName "acrobat reader dc" -Version "15" -Publisher "adobe" -Language "en" -CommandLine "msiexec.exe /i AcroRdrDC1500720033_en_US.msi /msi EULA_ACCEPT=YES /quiet /norestart /qn" -WorkingDirectory ".\Applications\adobe acrobat reader 15" -ApplicationSourcePath "E:\adobe reader folder" -DestinationFolder "adobe acrobat reader 15" -Verbose
