$strComputer = "."

$colItems = get-wmiobject -class "Win32_SystemSlot" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Connector Pinout: " $objItem.ConnectorPinout
      write-host "Connector Type: " $objItem.ConnectorType
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Current Usage: " $objItem.CurrentUsage
      write-host "Description: " $objItem.Description
      write-host "Height Allowed: " $objItem.HeightAllowed
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Length Allowed: " $objItem.LengthAllowed
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Maximum Data Width: " $objItem.MaxDataWidth
      write-host "Model: " $objItem.Model
      write-host "Name: " $objItem.Name
      write-host "Number: " $objItem.Number
      write-host "Other Identifying Information: " $objItem.OtherIdentifyingInfo
      write-host "Part Number: " $objItem.PartNumber
      write-host "PME Signal: " $objItem.PMESignal
      write-host "Powered-On: " $objItem.PoweredOn
      write-host "Purpose Description: " $objItem.PurposeDescription
      write-host "Serial Number: " $objItem.SerialNumber
      write-host "Shared: " $objItem.Shared
      write-host "SKU: " $objItem.SKU
      write-host "Slot Designation: " $objItem.SlotDesignation
      write-host "Special Purpose: " $objItem.SpecialPurpose
      write-host "Status: " $objItem.Status
      write-host "Supports Hot-Plug: " $objItem.SupportsHotPlug
      write-host "Tag: " $objItem.Tag
      write-host "Thermal Rating: " $objItem.ThermalRating
      write-host "Vcc Mixed Voltage Support: " $objItem.VccMixedVoltageSupport
      write-host "Version: " $objItem.Version
      write-host "Vpp Mixed Voltage Support: " $objItem.VppMixedVoltageSupport
      write-host
}


