$strComputer = "."

$colItems = get-wmiobject -class "Win32_ComponentCategory" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Category ID: " $objItem.CategoryId
      write-host "Description: " $objItem.Description
      write-host "Install ationDate: " $objItem.InstallDate
      write-host "Name: " $objItem.Name
      write-host "Status: " $objItem.Status
      write-host
}


