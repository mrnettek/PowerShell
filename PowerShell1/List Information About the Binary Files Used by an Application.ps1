$strComputer = "."

$colItems = get-wmiobject -class "Win32_Binary" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Data: " $objItem.Data
      write-host "Description: " $objItem.Description
      write-host "Name: " $objItem.Name
      write-host "ProductCode: " $objItem.ProductCode
      write-host "SettingID: " $objItem.SettingID
      write-host
}

