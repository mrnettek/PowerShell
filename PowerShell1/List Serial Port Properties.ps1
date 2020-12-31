$strComputer = "."

$colItems = get-wmiobject -class "Win32_SerialPort" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Availability: " $objItem.Availability
      write-host "Binary: " $objItem.Binary
      write-host "Capabilities: " $objItem.Capabilities
      write-host "Capability Descriptions: " $objItem.CapabilityDescriptions
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Maximum Baud Rate: " $objItem.MaxBaudRate
      write-host "Maximum Input Buffer Size: " $objItem.MaximumInputBufferSize
      write-host "Maximum Output Buffer Size: " $objItem.MaximumOutputBufferSize
      write-host "Maximum Number Controlled: " $objItem.MaxNumberControlled
      write-host "Name: " $objItem.Name
      write-host "Operating System Auto-Discovered: " $objItem.OSAutoDiscovered
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Protocol Supported: " $objItem.ProtocolSupported
      write-host "Provider Type: " $objItem.ProviderType
      write-host "Settable Baud Rate: " $objItem.SettableBaudRate
      write-host "Settable Data Bits: " $objItem.SettableDataBits
      write-host "Settable Flow Control: " $objItem.SettableFlowControl
      write-host "Settable Parity: " $objItem.SettableParity
      write-host "Settable Parity Check: " $objItem.SettableParityCheck
      write-host "Settable RLSD: " $objItem.SettableRLSD
      write-host "Settable Stop Bits: " $objItem.SettableStopBits
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "Supports 16-Bit Mode: " $objItem.Supports16BitMode
      write-host "Supports DTRDSR: " $objItem.SupportsDTRDSR
      write-host "Supports Elapsed Timeouts: " $objItem.SupportsElapsedTimeouts
      write-host "Supports Int Timeouts: " $objItem.SupportsIntTimeouts
      write-host "Supports Parity Check: " $objItem.SupportsParityCheck
      write-host "Supports RLSD: " $objItem.SupportsRLSD
      write-host "Supports RTSCTS: " $objItem.SupportsRTSCTS
      write-host "Supports Special Characters: " $objItem.SupportsSpecialCharacters
      write-host "Supports XOn XOff: " $objItem.SupportsXOnXOff
      write-host "Supports XOn XOff Set: " $objItem.SupportsXOnXOffSet
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Time Of Last Reset: " $objItem.TimeOfLastReset
      write-host
}


