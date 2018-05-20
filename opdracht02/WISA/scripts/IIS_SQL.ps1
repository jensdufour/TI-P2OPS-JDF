Function installIis {
  echo "Installing IIS..."
  CMD /C START /w PKGMGR.EXE /l:log.etw /iu:IIS-WebServerRole
  echo Done!
}
Function downloaddotnet {
  echo "Downloading .NET..."
  $storageDir = "C:\"
  $webclient = New-Object System.Net.WebClient
  $url = "https://download.microsoft.com/download/8/E/2/8E2BDDE7-F06E-44CC-A145-56C6B9BBE5DD/NDP471-KB4033344-Web.exe"
  $file = "$storageDir\dotnet.exe"
  $webclient.DownloadFile($url,$file)
  echo Done!
}
Function installDotNet {
  $ErrorActionPreference = "Stop"

  import-module servermanager
  echo "Enabling .NET..."
  Install-WindowsFeature Net-Framework-Core
  echo Done!
}
Function installDotNet2 {
  echo "Installing .NET..."
  C:\dotnet.exe /q
  echo Done!
}
Function installDotNet3 {
  Install-WindowsFeature Net-Framework-Core -source C:\dotnet.exe
}
Function installSQL {
  echo "Installing SQLserver, this will take a while..."
  C:\vagrant\scripts\sql\SETUP.exe /Q  /Action=install /INSTANCENAME="SQLEXPRESS"  /INSTANCEID="SQLExpress"  /IAcceptSQLServerLicenseTerms  /FEATURES=SQL,Tools  /TCPENABLED=1  /SECURITYMODE="SQL" /SAPWD="#SAPassword!"
  echo Done!

  echo "Disabling firewall..."
  netsh advfirewall set allprofiles state off
  echo Done!
}
Function confTCP {
  # http://stackoverflow.com/a/9949105
  $ErrorActionPreference = "Stop"

  echo "Configuring TCP port"

  # http://technet.microsoft.com/en-us/library/dd206997(v=sql.105).aspx
  # Load assemblies
  [reflection.assembly]::LoadWithPartialName("Microsoft.SqlServer.Smo")
  [reflection.assembly]::LoadWithPartialName("Microsoft.SqlServer.SqlWmiManagement")

  # http://www.dbi-services.com/index.php/blog/entry/sql-server-2012-configuring-your-tcp-port-via-powershell
  # Set the port
  $smo = 'Microsoft.SqlServer.Management.Smo.'
  $wmi = new-object ($smo + 'Wmi.ManagedComputer')
  $uri = "ManagedComputer[@Name='$env:COMPUTERNAME']/ ServerInstance[@Name='SQLEXPRESS']/ServerProtocol[@Name='Tcp']"
  $Tcp = $wmi.GetSmoObject($uri)
  $Tcp.IsEnabled = $true
  $wmi.GetSmoObject($uri + "/IPAddress[@Name='IPAll']").IPAddressProperties[1].Value="1433"
  $Tcp.alter()

  echo "DONE!"

  echo "Restarting service..."
  # Restart service so that configurations are applied
  restart-service -f "SQL Server (SQLEXPRESS)"
  echo "DONE!"
}


installIis
downloaddotnet
installDotNet
installDotNet2
installDotNet3
installSQL
confTCP
