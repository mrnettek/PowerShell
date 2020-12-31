$strComputer = "."

$colItems = get-wmiobject -class "Win32_Proxy" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Proxy Port Number: " $objItem.ProxyPortNumber
      write-host "Proxy Server: " $objItem.ProxyServer
      write-host "Server Name: " $objItem.ServerName
      write-host "Setting ID: " $objItem.SettingID
      write-host
}


