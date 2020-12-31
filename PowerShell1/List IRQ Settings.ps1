$strComputer = "."

$colItems = get-wmiobject -class "Win32_IRQResource" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Availability: " $objItem.Availability
      write-host "Caption: " $objItem.Caption
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "CS Creation Class Name: " $objItem.CSCreationClassName
      write-host "CS Name: " $objItem.CSName
      write-host "Description: " $objItem.Description
      write-host "Hardware: " $objItem.Hardware
      write-host "Installation Date: " $objItem.InstallDate
      write-host "IRQ Number: " $objItem.IRQNumber
      write-host "Name: " $objItem.Name
      write-host "Shareable: " $objItem.Shareable
      write-host "Status: " $objItem.Status
      write-host "Trigger Level: " $objItem.TriggerLevel
      write-host "Trigger Type: " $objItem.TriggerType
      write-host "Vector: " $objItem.Vector
      write-host
}


