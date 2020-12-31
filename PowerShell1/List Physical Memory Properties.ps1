$strComputer = "."

$colItems = get-wmiobject -class "Win32_PhysicalMemory" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Bank Label: " $objItem.BankLabel
      write-host "Capacity: " $objItem.Capacity
      write-host "Caption: " $objItem.Caption
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Data Width: " $objItem.DataWidth
      write-host "Description: " $objItem.Description
      write-host "Device Locator: " $objItem.DeviceLocator
      write-host "Form Factor: " $objItem.FormFactor
      write-host "Hot-Swappable: " $objItem.HotSwappable
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Interleave Data Depth: " $objItem.InterleaveDataDepth
      write-host "Interleave Position: " $objItem.InterleavePosition
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Memory Type: " $objItem.MemoryType
      write-host "Model: " $objItem.Model
      write-host "Name: " $objItem.Name
      write-host "Other Identifying Information: " $objItem.OtherIdentifyingInfo
      write-host "Part Number: " $objItem.PartNumber
      write-host "Position In Row: " $objItem.PositionInRow
      write-host "Powered-On: " $objItem.PoweredOn
      write-host "Removable: " $objItem.Removable
      write-host "Replaceable: " $objItem.Replaceable
      write-host "Serial Number: " $objItem.SerialNumber
      write-host "SKU: " $objItem.SKU
      write-host "Speed: " $objItem.Speed
      write-host "Status: " $objItem.Status
      write-host "Tag: " $objItem.Tag
      write-host "Total Width: " $objItem.TotalWidth
      write-host "Type Detail: " $objItem.TypeDetail
      write-host "Version: " $objItem.Version
      write-host
}


