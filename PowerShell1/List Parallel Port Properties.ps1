$strComputer = "."

$colItems = get-wmiobject -class "Win32_ParallelPort" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Availability: " $objItem.Availability
      write-host "Capabilities: " $objItem.Capabilities
      write-host "Capability Descriptions: " $objItem.CapabilityDescriptions
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "DMA Support: " $objItem.DMASupport
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Maximum Number Controlled: " $objItem.MaxNumberControlled
      write-host "Name: " $objItem.Name
      write-host "Operating System Auto-Discovered: " $objItem.OSAutoDiscovered
      write-host "PNP DeviceID: " $objItem.PNPDeviceID
      write-host "Powe rManagement Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "ProtocolS upported: " $objItem.ProtocolSupported
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Time Of Last Reset: " $objItem.TimeOfLastReset
      write-host
}


