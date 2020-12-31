$strComputer = "."

$colItems = get-wmiobject -class "Win32_LogonSession" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Authentication Package: " $objItem.AuthenticationPackage
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Logon ID: " $objItem.LogonId
      write-host "Logon Type: " $objItem.LogonType
      write-host "Name: " $objItem.Name
      write-host "Start Time: " $objItem.StartTime
      write-host "Status: " $objItem.Status
      write-host
}


