$strComputer = "."

$colItems = get-wmiobject -class "Win32_PortResource" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Alias: " $objItem.Alias
      write-host "Caption: " $objItem.Caption
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "CS Creation Class Name: " $objItem.CSCreationClassName
      write-host "CS Name: " $objItem.CSName
      write-host "Description: " $objItem.Description
      write-host "Ending Address: " $objItem.EndingAddress
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Name: " $objItem.Name
      write-host "Starting Address: " $objItem.StartingAddress
      write-host "Status: " $objItem.Status
      write-host
}


