$strComputer = "."

$colItems = get-wmiobject -class "Win32_TCPIPPrinterPort" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Byte Count: " $objItem.ByteCount
      write-host "Caption: " $objItem.Caption
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Host Address: " $objItem.HostAddress
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Name: " $objItem.Name
      write-host "Port Number: " $objItem.PortNumber
      write-host "Protocol: " $objItem.Protocol
      write-host "Queue: " $objItem.Queue
      write-host "SNMP Community: " $objItem.SNMPCommunity
      write-host "SNMP Device Index: " $objItem.SNMPDevIndex
      write-host "SNMP Enabled: " $objItem.SNMPEnabled
      write-host "Status: " $objItem.Status
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Type: " $objItem.Type
      write-host
}


