$strComputer = "."

$colItems = get-wmiobject -class "Win32_BaseBoard" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Options: " $objItem.ConfigOptions
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Depth: " $objItem.Depth
      write-host "Description: " $objItem.Description
      write-host "Height: " $objItem.Height
      write-host "Hosting Board: " $objItem.HostingBoard
      write-host "Hot Swappable: " $objItem.HotSwappable
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Model: " $objItem.Model
      write-host "Name: " $objItem.Name
      write-host "Other Identifying Information: " $objItem.OtherIdentifyingInfo
      write-host "Part Number: " $objItem.PartNumber
      write-host "Powered On: " $objItem.PoweredOn
      write-host "Product: " $objItem.Product
      write-host "Removable: " $objItem.Removable
      write-host "Replaceable: " $objItem.Replaceable
      write-host "Requirements Description: " $objItem.RequirementsDescription
      write-host "Requires DaughterBoard: " $objItem.RequiresDaughterBoard
      write-host "Serial Number: " $objItem.SerialNumber
      write-host "SKU: " $objItem.SKU
      write-host "Slot Layout: " $objItem.SlotLayout
      write-host "Special Requirements: " $objItem.SpecialRequirements
      write-host "Status: " $objItem.Status
      write-host "Tag: " $objItem.Tag
      write-host "Version: " $objItem.Version
      write-host "Weight: " $objItem.Weight
      write-host "Width: " $objItem.Width
      write-host
}


