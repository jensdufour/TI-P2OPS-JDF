#make folder
Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
new-item -path "DS001:\Applications" -enable "True" -Name "Java Deployment" -Comments "" -ItemType "folder" -Verbose

# import java msi file 
Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
import-MDTApplication -path "DS001:\Applications\Java Deployment" -enable "True" -Name "oracle Java 1.8.0" -ShortName "Java" -Version "1.8.0" -Publisher "oracle" -Language "" -CommandLine "msiexec /i jre1.8.0_17164.msi /q" -WorkingDirectory ".\Applications\oracle Java 1.8.0" -ApplicationSourcePath "E:\Java folder" -DestinationFolder "oracle Java 1.8.0" -Verbose
