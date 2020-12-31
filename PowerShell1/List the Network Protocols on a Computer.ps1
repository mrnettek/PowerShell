$strComputer = "."

$colItems = get-wmiobject -class "Win32_NetworkProtocol" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Connectionless Service: " $objItem.ConnectionlessService
      write-host "Description: " $objItem.Description
      write-host "Guarantees Delivery: " $objItem.GuaranteesDelivery
      write-host "Guarantees Sequencing: " $objItem.GuaranteesSequencing
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Maximum Address Size: " $objItem.MaximumAddressSize
      write-host "Maximum Message Size: " $objItem.MaximumMessageSize
      write-host "Message Oriented: " $objItem.MessageOriented
      write-host "Minimum Address Size: " $objItem.MinimumAddressSize
      write-host "Name: " $objItem.Name
      write-host "Pseudo-Stream Oriented: " $objItem.PseudoStreamOriented
      write-host "Status: " $objItem.Status
      write-host "Supports Broadcasting: " $objItem.SupportsBroadcasting
      write-host "Supports Connect Data: " $objItem.SupportsConnectData
      write-host "Supports Disconnect Data: " $objItem.SupportsDisconnectData
      write-host "Supports Encryption: " $objItem.SupportsEncryption
      write-host "Supports Expedited Data: " $objItem.SupportsExpeditedData
      write-host "Supports Fragmentation: " $objItem.SupportsFragmentation
      write-host "Supports Graceful Closing: " $objItem.SupportsGracefulClosing
      write-host "Supports Guaranteed Bandwidth: " $objItem.SupportsGuaranteedBandwidth
      write-host "Supports Multicasting: " $objItem.SupportsMulticasting
      write-host "Supports Quality of Service: " $objItem.SupportsQualityofService
      write-host
}


