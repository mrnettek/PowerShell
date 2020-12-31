$strComputer = "."

$colItems = get-wmiobject -class "Win32_PhysicalMemoryArray" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Depth: " $objItem.Depth
      write-host "Description: " $objItem.Description
      write-host "Height: " $objItem.Height
      write-host "Hot Swappable: " $objItem.HotSwappable
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Location: " $objItem.Location
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Maximum Capacity: " $objItem.MaxCapacity
      write-host "Memory Devices: " $objItem.MemoryDevices
      write-host "Memory Error Correction: " $objItem.MemoryErrorCorrection
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
      write-host "Use: " $objItem.Use
      write-host "Version: " $objItem.Version
      write-host "Weight: " $objItem.Weight
      write-host "Width: " $objItem.Width
      write-host
}


