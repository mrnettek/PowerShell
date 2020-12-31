$strComputer = "."

$colItems = get-wmiobject -class "Win32_TSSessionDirectory" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Session Directory Active: " $objItem.SessionDirectoryActive
      write-host "Session Directory Cluster Name: " $objItem.SessionDirectoryClusterName
      write-host "Session Directory Expose Server IP: " $objItem.SessionDirectoryExposeServerIP
      write-host "Session Directory Location: " $objItem.SessionDirectoryLocation
      write-host "Setting ID: " $objItem.SettingID
      write-host
}


