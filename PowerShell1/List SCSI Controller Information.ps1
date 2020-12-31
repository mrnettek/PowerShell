$strComputer = "."

$colItems = get-wmiobject -class "Win32_SCSIController" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Availability: " $objItem.Availability
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager Userm Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Controller Timeouts: " $objItem.ControllerTimeouts
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Device Map: " $objItem.DeviceMap
      write-host "Driver Name: " $objItem.DriverName
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Hardware Version: " $objItem.HardwareVersion
      write-host "Index: " $objItem.Index
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Maximum Data Width: " $objItem.MaxDataWidth
      write-host "Maximum Number Controlled: " $objItem.MaxNumberControlled
      write-host "Maximum Transfer Rate: " $objItem.MaxTransferRate
      write-host "Name: " $objItem.Name
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Protection Management: " $objItem.ProtectionManagement
      write-host "Protocol Supported: " $objItem.ProtocolSupported
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Time Of Last Reset: " $objItem.TimeOfLastReset
      write-host
}


