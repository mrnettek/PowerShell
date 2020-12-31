$strComputer = "."

$colItems = get-wmiobject -class "Win32_CDROMDrive" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Availability: " $objItem.Availability
      write-host "Capabilities: " $objItem.Capabilities
      write-host "Capability Descriptions: " $objItem.CapabilityDescriptions
      write-host "Caption: " $objItem.Caption
      write-host "Compression Method: " $objItem.CompressionMethod
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Default Block Size: " $objItem.DefaultBlockSize
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Drive: " $objItem.Drive
      write-host "Drive Integrity: " $objItem.DriveIntegrity
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Error Methodology: " $objItem.ErrorMethodology
      write-host "File System Flags: " $objItem.FileSystemFlags
      write-host "File System Flags Ex: " $objItem.FileSystemFlagsEx
      write-host "ID: " $objItem.Id
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Maximum Block Size: " $objItem.MaxBlockSize
      write-host "Maximum Component Length: " $objItem.MaximumComponentLength
      write-host "Maximum Media Size: " $objItem.MaxMediaSize
      write-host "Media Loaded: " $objItem.MediaLoaded
      write-host "Media Type: " $objItem.MediaType
      write-host "Mfr Assigned Revision Level: " $objItem.MfrAssignedRevisionLevel
      write-host "Minimum Block Size: " $objItem.MinBlockSize
      write-host "Name: " $objItem.Name
      write-host "Needs Cleaning: " $objItem.NeedsCleaning
      write-host "Number Of Media Supported: " $objItem.NumberOfMediaSupported
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Revision Level: " $objItem.RevisionLevel
      write-host "SCSI Bus: " $objItem.SCSIBus
      write-host "SCSI Logical Unit: " $objItem.SCSILogicalUnit
      write-host "SCSI Port: " $objItem.SCSIPort
      write-host "SCSI Target ID: " $objItem.SCSITargetId
      write-host "Size: " $objItem.Size
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Transfer Rate: " $objItem.TransferRate
      write-host "Volume Name: " $objItem.VolumeName
      write-host "Volume Serial Number: " $objItem.VolumeSerialNumber
      write-host
}


