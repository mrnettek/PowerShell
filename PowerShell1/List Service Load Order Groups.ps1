$strComputer = "."

$colItems = get-wmiobject -class "Win32_LoadOrderGroup" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "DriverEnabled: " $objItem.DriverEnabled
      write-host "GroupOrder: " $objItem.GroupOrder
      write-host "InstallDate: " $objItem.InstallDate
      write-host "Name: " $objItem.Name
      write-host "Status: " $objItem.Status
      write-host
}


