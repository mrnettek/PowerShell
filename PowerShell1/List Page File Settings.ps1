$strComputer = "."

$colItems = get-wmiobject -class "Win32_PageFileSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Initial Size: " $objItem.InitialSize
      write-host "Maximum Size: " $objItem.MaximumSize
      write-host "Name: " $objItem.Name
      write-host "Setting ID: " $objItem.SettingID
      write-host
}


