$strComputer = "."

$colItems = get-wmiobject -class "Win32_LogicalProgramGroup" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Group Name: " $objItem.GroupName
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Name: " $objItem.Name
      write-host "Status: " $objItem.Status
      write-host "User Name: " $objItem.UserName
      write-host
}

