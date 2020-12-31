$strComputer = "."

$colItems = get-wmiobject -class "Win32_Terminal" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Enable Terminal: " $objItem.fEnableTerminal
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Name: " $objItem.Name
      write-host "Status: " $objItem.Status
      write-host "Terminal Name: " $objItem.TerminalName
      write-host
}


