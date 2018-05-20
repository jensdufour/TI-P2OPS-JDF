Function confSQL {
  $ErrorActionPreference = "Stop"
  echo "Linking .NET and IIS 8"
  dism /online /NoRestart /enable-feature /featurename:IIS-ASPNET45 /all
  echo Done!
}
Function createDB{
  $ErrorActionPreference = "Stop"
  echo "Creating Database WebSite..."
  Sqlcmd -U sa -P "#SAPassword!" -q "CREATE DATABASE website;"
  echo Done!
}
Function deleteIIS{
  $ErrorActionPreference = "Stop"
  echo "Removing default website..."
  Remove-Item "c:\inetpub\wwwroot\*.*" | Where { ! $_.PSIsContainer }
  echo Done!
}
Function installNet{
  $ErrorActionPreference = "Stop"
  echo "Installing YAF..."
  [string]$sourceDirectory  = "C:\vagrant\scripts\website\*"
  [string]$destinationDirectory = "C:\inetpub\wwwroot\"
  Copy-item -Force -Recurse -Verbose $sourceDirectory -Destination $destinationDirectory
  echo Done!
}
confSQL
deleteIIS
installNet
createDB
