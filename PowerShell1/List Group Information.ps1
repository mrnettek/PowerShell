$strComputer = "."

$colItems = get-wmiobject -class "Win32_Group" -namespace "root\CIMV2" `
-computername $strComputer -filter "LocalAccount = True"

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Domain: " $objItem.Domain
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Local Account: " $objItem.LocalAccount
      write-host "Name: " $objItem.Name
      write-host "SID: " $objItem.SID
      write-host "SID Type: " $objItem.SIDType
      write-host "Status: " $objItem.Status
      write-host
}


