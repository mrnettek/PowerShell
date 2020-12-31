$strComputer = "."

$colItems = get-wmiobject -class "Win32_DCOMApplication" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Application ID: " $objItem.AppID
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Name: " $objItem.Name
      write-host "Status: " $objItem.Status
      write-host
}


