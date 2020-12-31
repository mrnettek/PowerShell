$strComputer = "."

$colItems = get-wmiobject -class "Win32_Registry" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Current Size: " $objItem.CurrentSize
      write-host "Description: " $objItem.Description
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Maximum Size: " $objItem.MaximumSize
      write-host "Name: " $objItem.Name
      write-host "Proposed Size: " $objItem.ProposedSize
      write-host "Status: " $objItem.Status
      write-host
}


