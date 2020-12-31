$strComputer = "."

$colItems = get-wmiobject -class "Win32_SoftwareFeature" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Accesses: " $objItem.Accesses
      write-host "Attributes: " $objItem.Attributes
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Identifying Number: " $objItem.IdentifyingNumber
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Installation State: " $objItem.InstallState
      write-host "LastUse: " $objItem.LastUse
      write-host "Name: " $objItem.Name
      write-host "Product Name: " $objItem.ProductName
      write-host "Status: " $objItem.Status
      write-host "Vendor: " $objItem.Vendor
      write-host "Version: " $objItem.Version
      write-host
}


