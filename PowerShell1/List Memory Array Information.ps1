$strComputer = "."

$colItems = get-wmiobject -class "Win32_MemoryArray" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Access: " $objItem.Access
      write-host "Additional Error Data: " $objItem.AdditionalErrorData
      write-host "Availability: " $objItem.Availability
      write-host "Block Size: " $objItem.BlockSize
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Correctable Error: " $objItem.CorrectableError
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Ending Address: " $objItem.EndingAddress
      write-host "Error Access: " $objItem.ErrorAccess
      write-host "Error Address: " $objItem.ErrorAddress
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Data: " $objItem.ErrorData
      write-host "Error Data Order: " $objItem.ErrorDataOrder
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Error Granularity: " $objItem.ErrorGranularity
      write-host "Error Information: " $objItem.ErrorInfo
      write-host "Error Methodology: " $objItem.ErrorMethodology
      write-host "Error Resolution: " $objItem.ErrorResolution
      write-host "Error Time: " $objItem.ErrorTime
      write-host "Error Transfer Size: " $objItem.ErrorTransferSize
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Name: " $objItem.Name
      write-host "Number Of Blocks: " $objItem.NumberOfBlocks
      write-host "Other Error Description: " $objItem.OtherErrorDescription
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Purpose: " $objItem.Purpose
      write-host "Starting Address: " $objItem.StartingAddress
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System-Level Address: " $objItem.SystemLevelAddress
      write-host "System Name: " $objItem.SystemName
      write-host
}


