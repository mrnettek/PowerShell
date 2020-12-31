$strComputer = "."

$colItems = get-wmiobject -class "Win32_DMAChannel" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Address Size: " $objItem.AddressSize
      write-host "Availability: " $objItem.Availability
      write-host "Burst Mode: " $objItem.BurstMode
      write-host "Byte Mode: " $objItem.ByteMode
      write-host "Caption: " $objItem.Caption
      write-host "Channel Timing: " $objItem.ChannelTiming
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "CS Creation Class Name: " $objItem.CSCreationClassName
      write-host "CS Name: " $objItem.CSName
      write-host "Description: " $objItem.Description
      write-host "DMA Channel: " $objItem.DMAChannel
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Maximum Transfer Size: " $objItem.MaxTransferSize
      write-host "Name: " $objItem.Name
      write-host "Port: " $objItem.Port
      write-host "Status: " $objItem.Status
      write-host "Transfer Widths: " $objItem.TransferWidths
      write-host "Type C Timing: " $objItem.TypeCTiming
      write-host "Word Mode: " $objItem.WordMode
      write-host
}


