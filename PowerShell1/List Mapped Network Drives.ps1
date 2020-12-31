$strComputer = "."

$colItems = get-wmiobject -class "Win32_MappedLogicalDisk" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Access: " $objItem.Access
      write-host "Availability: " $objItem.Availability
      write-host "Block Size: " $objItem.BlockSize
      write-host "Caption: " $objItem.Caption
      write-host "Compressed: " $objItem.Compressed
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Error Methodology: " $objItem.ErrorMethodology
      write-host "File System: " $objItem.FileSystem
      write-host "Free Space: " $objItem.FreeSpace
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Maximum Component Length: " $objItem.MaximumComponentLength
      write-host "Name: " $objItem.Name
      write-host "Number Of Blocks: " $objItem.NumberOfBlocks
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Provider Name: " $objItem.ProviderName
      write-host "Purpose: " $objItem.Purpose
      write-host "Quotas Disabled: " $objItem.QuotasDisabled
      write-host "Quotas Incomplete: " $objItem.QuotasIncomplete
      write-host "Quotas Rebuilding: " $objItem.QuotasRebuilding
      write-host "Session ID: " $objItem.SessionID
      write-host "Size: " $objItem.Size
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "Supports Disk Quotas: " $objItem.SupportsDiskQuotas
      write-host "Supports File-Based Compression: " $objItem.SupportsFileBasedCompression
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Volume Name: " $objItem.VolumeName
      write-host "Volume Serial Number: " $objItem.VolumeSerialNumber
      write-host
}


