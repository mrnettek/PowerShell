$strComputer = "."

$colItems = get-wmiobject -class "Win32_OnBoardDevice" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device Type: " $objItem.DeviceType
      write-host "Enabled: " $objItem.Enabled
      write-host "Hot Swappable: " $objItem.HotSwappable
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Model: " $objItem.Model
      write-host "Name: " $objItem.Name
      write-host "Other Identifying Information: " $objItem.OtherIdentifyingInfo
      write-host "Part Number: " $objItem.PartNumber
      write-host "Powered-On: " $objItem.PoweredOn
      write-host "Removable: " $objItem.Removable
      write-host "Replaceable: " $objItem.Replaceable
      write-host "Serial Number: " $objItem.SerialNumber
      write-host "SKU: " $objItem.SKU
      write-host "Status: " $objItem.Status
      write-host "Tag: " $objItem.Tag
      write-host "Version: " $objItem.Version
      write-host
}


