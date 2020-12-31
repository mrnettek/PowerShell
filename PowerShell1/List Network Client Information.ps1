$strComputer = "."

$colItems = get-wmiobject -class "Win32_NetworkClient" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Name: " $objItem.Name
      write-host "Status: " $objItem.Status
      write-host
}


