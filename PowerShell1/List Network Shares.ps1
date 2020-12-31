$strComputer = "."

$colItems = get-wmiobject -class "Win32_Share" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Access Mask: " $objItem.AccessMask
      write-host "Allow Maximum: " $objItem.AllowMaximum
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Maximum Allowed: " $objItem.MaximumAllowed
      write-host "Name: " $objItem.Name
      write-host "Path: " $objItem.Path
      write-host "Status: " $objItem.Status
      write-host "Type: " $objItem.Type
      write-host
}

