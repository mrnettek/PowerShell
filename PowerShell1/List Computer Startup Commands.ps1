$strComputer = "."

$colItems = get-wmiobject -class "Win32_StartupCommand" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Command: " $objItem.Command
      write-host "Description: " $objItem.Description
      write-host "Location: " $objItem.Location
      write-host "Name: " $objItem.Name
      write-host "Setting ID: " $objItem.SettingID
      write-host "User: " $objItem.User
      write-host
}


