$strComputer = "."

$colItems = get-wmiobject -class "Win32_TSNetworkAdapterSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Maximum Connections: " $objItem.MaximumConnections
      write-host "Network Adapter ID: " $objItem.NetworkAdapterID
      write-host "Network Adapter Name: " $objItem.NetworkAdapterName
      write-host "Setting ID: " $objItem.SettingID
      write-host "Terminal Name: " $objItem.TerminalName
      write-host
}


