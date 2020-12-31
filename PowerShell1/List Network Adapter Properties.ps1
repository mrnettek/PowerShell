$strComputer = "."

$colItems = get-wmiobject -class "Win32_NetworkAdapter" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Adapter Type: " $objItem.AdapterType
      write-host "Adapter Type ID: " $objItem.AdapterTypeId
      write-host "Autosense: " $objItem.AutoSense
      write-host "Availability: " $objItem.Availability
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Index: " $objItem.Index
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Installed: " $objItem.Installed
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "MAC Address: " $objItem.MACAddress
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Maximum Number Controlled: " $objItem.MaxNumberControlled
      write-host "Maximum Speed: " $objItem.MaxSpeed
      write-host "Name: " $objItem.Name
      write-host "Network Connection ID: " $objItem.NetConnectionID
      write-host "Network Connection Status: " $objItem.NetConnectionStatus
      write-host "NetworkAddresses: " $objItem.NetworkAddresses
      write-host "Permanent Address: " $objItem.PermanentAddress
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Product Name: " $objItem.ProductName
      write-host "Service Name: " $objItem.ServiceName
      write-host "Speed: " $objItem.Speed
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Time Of Last Reset: " $objItem.TimeOfLastReset
      write-host
}


