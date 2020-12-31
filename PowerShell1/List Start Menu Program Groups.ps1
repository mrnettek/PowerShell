$strComputer = "."

$colItems = get-wmiobject -class "Win32_ProgramGroup" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Group Name: " $objItem.GroupName
      write-host "Name: " $objItem.Name
      write-host "Setting ID: " $objItem.SettingID
      write-host "User Name: " $objItem.UserName
      write-host
}


