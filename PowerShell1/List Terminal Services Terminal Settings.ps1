$strComputer = "."

$colItems = get-wmiobject -class "Win32_TerminalServiceSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Active Desktop: " $objItem.ActiveDesktop
      write-host "Allow TS Connections: " $objItem.AllowTSConnections
      write-host "Caption: " $objItem.Caption
      write-host "Delete Temporary Folders: " $objItem.DeleteTempFolders
      write-host "Description: " $objItem.Description
      write-host "Direct Connect License Servers: " $objItem.DirectConnectLicenseServers
      write-host "Help: " $objItem.Help
      write-host "Home Directory: " $objItem.HomeDirectory
      write-host "Licensing Description: " $objItem.LicensingDescription
      write-host "Licensing Name: " $objItem.LicensingName
      write-host "Licensing Type: " $objItem.LicensingType
      write-host "Logons: " $objItem.Logons
      write-host "Profile Path: " $objItem.ProfilePath
      write-host "Server Name: " $objItem.ServerName
      write-host "Setting ID: " $objItem.SettingID
      write-host "Single Session: " $objItem.SingleSession
      write-host "Terminal Server Mode: " $objItem.TerminalServerMode
      write-host "User Permission: " $objItem.UserPermission
      write-host "Use Temporary Folders: " $objItem.UseTempFolders
      write-host
}


