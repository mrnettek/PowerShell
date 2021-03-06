$strComputer = "."

$colItems = get-wmiobject -class "Win32_CacheMemory" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Access: " $objItem.Access
      write-host "Additional Error Data: " $objItem.AdditionalErrorData
      write-host "Associativity: " $objItem.Associativity
      write-host "Availability: " $objItem.Availability
      write-host "Block Size: " $objItem.BlockSize
      write-host "Cache Speed: " $objItem.CacheSpeed
      write-host "Cache Type: " $objItem.CacheType
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Correctable Error: " $objItem.CorrectableError
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Current SRAM: " $objItem.CurrentSRAM
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Ending Address: " $objItem.EndingAddress
      write-host "Error Access: " $objItem.ErrorAccess
      write-host "Error Address: " $objItem.ErrorAddress
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Correct Type: " $objItem.ErrorCorrectType
      write-host "Error Data: " $objItem.ErrorData
      write-host "Error Data Order: " $objItem.ErrorDataOrder
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Error Information: " $objItem.ErrorInfo
      write-host "Error Methodology: " $objItem.ErrorMethodology
      write-host "Error Resolution: " $objItem.ErrorResolution
      write-host "Error Time: " $objItem.ErrorTime
      write-host "Error Transfer Size: " $objItem.ErrorTransferSize
      write-host "Flush Timer: " $objItem.FlushTimer
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Installed Size: " $objItem.InstalledSize
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Level: " $objItem.Level
      write-host "Line Size: " $objItem.LineSize
      write-host "Location: " $objItem.Location
      write-host "Maximum Cache Size: " $objItem.MaxCacheSize
      write-host "Name: " $objItem.Name
      write-host "Number Of Blocks: " $objItem.NumberOfBlocks
      write-host "Other Error Description: " $objItem.OtherErrorDescription
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Purpose: " $objItem.Purpose
      write-host "Read Policy: " $objItem.ReadPolicy
      write-host "Replacement Policy: " $objItem.ReplacementPolicy
      write-host "Starting Address: " $objItem.StartingAddress
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "Supported SRAM: " $objItem.SupportedSRAM
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System-Level Address: " $objItem.SystemLevelAddress
      write-host "System Name: " $objItem.SystemName
      write-host "Write Policy: " $objItem.WritePolicy
      write-host
}


