$strComputer = "."

$colItems = get-wmiobject -class "Win32_PortConnector" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Connector Pinout: " $objItem.ConnectorPinout
      write-host "Connector Type: " $objItem.ConnectorType
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "External Reference Designator: " $objItem.ExternalReferenceDesignator
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Internal Reference Designator: " $objItem.InternalReferenceDesignator
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Model: " $objItem.Model
      write-host "Name: " $objItem.Name
      write-host "Other Identifying Information: " $objItem.OtherIdentifyingInfo
      write-host "Part Number: " $objItem.PartNumber
      write-host "Port Type: " $objItem.PortType
      write-host "Powered-On: " $objItem.PoweredOn
      write-host "Serial Number: " $objItem.SerialNumber
      write-host "SKU: " $objItem.SKU
      write-host "Status: " $objItem.Status
      write-host "Tag: " $objItem.Tag
      write-host "Version: " $objItem.Version
      write-host
}


