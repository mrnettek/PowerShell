$strComputer = "."

$colItems = get-wmiobject -class "Win32_TSNetworkAdapterListSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Network Adapter ID: " $objItem.NetworkAdapterID
      write-host "Setting ID: " $objItem.SettingID
      write-host "Terminal Name: " $objItem.TerminalName
      write-host "Terminal Protocol: " $objItem.TerminalProtocol
      write-host "Transport: " $objItem.Transport
      write-host
}


