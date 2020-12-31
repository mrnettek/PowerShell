$strComputer = "."

$colItems = get-wmiobject -class "Win32_SystemEnclosure" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Audible Alarm: " $objItem.AudibleAlarm
      write-host "Breach Description: " $objItem.BreachDescription
      write-host "Cable Management Strategy: " $objItem.CableManagementStrategy
      write-host "Caption: " $objItem.Caption
      write-host "Chassis Types: " $objItem.ChassisTypes
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Current Required Or Produced: " $objItem.CurrentRequiredOrProduced
      write-host "Depth: " $objItem.Depth
      write-host "Description: " $objItem.Description
      write-host "Heat Generation: " $objItem.HeatGeneration
      write-host "Height: " $objItem.Height
      write-host "Hot-Swappable: " $objItem.HotSwappable
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Lock Present: " $objItem.LockPresent
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Model: " $objItem.Model
      write-host "Name: " $objItem.Name
      write-host "Number Of Power Cords: " $objItem.NumberOfPowerCords
      write-host "Other Identifying Information: " $objItem.OtherIdentifyingInfo
      write-host "Part Number: " $objItem.PartNumber
      write-host "Powered-On: " $objItem.PoweredOn
      write-host "Removable: " $objItem.Removable
      write-host "Replaceable: " $objItem.Replaceable
      write-host "Security Breach: " $objItem.SecurityBreach
      write-host "Security Status: " $objItem.SecurityStatus
      write-host "Serial Number: " $objItem.SerialNumber
      write-host "Service Descriptions: " $objItem.ServiceDescriptions
      write-host "Service Philosophy: " $objItem.ServicePhilosophy
      write-host "SKU: " $objItem.SKU
      write-host "SMBIOS Asset Tag: " $objItem.SMBIOSAssetTag
      write-host "Status: " $objItem.Status
      write-host "Tag: " $objItem.Tag
      write-host "Type Descriptions: " $objItem.TypeDescriptions
      write-host "Version: " $objItem.Version
      write-host "Visible Alarm: " $objItem.VisibleAlarm
      write-host "Weight: " $objItem.Weight
      write-host "Width: " $objItem.Width
      write-host
}


