# make folder
Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
new-item -path "DS001:\Applications" -enable "True" -Name "Libre office" -Comments "" -ItemType "folder" -Verbose

#4import msi file
Import-Module "C:\Program Files\Microsoft Deployment Toolkit\bin\MicrosoftDeploymentToolkit.psd1"
New-PSDrive -Name "DS001" -PSProvider MDTProvider -Root "C:\DeploymentShare"
import-MDTApplication -path "DS001:\Applications\Libre office" -enable "True" -Name "libre libre office 6.0.4" -ShortName "libre office" -Version "6.0.4" -Publisher "libre" -Language "" -CommandLine "msiexec.exe /i LibreOffice_6.0.4_win_x64.msi /msi EULA_ACCEPT=YES /quiet /norestart /qn" -WorkingDirectory ".\Applications\libre libre office 6.0.4" -ApplicationSourcePath "E:\Script voor Libre Office" -DestinationFolder "libre libre office 6.0.4" -Verbose
