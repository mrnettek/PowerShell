$strComputer = "."

$colItems = get-wmiobject -class "Win32_FloppyDrive" -namespace "root\CIMV2" `
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
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Error Methodology: " $objItem.ErrorMethodology
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Maximum Block Size: " $objItem.MaxBlockSize
      write-host "Maximum Media Size: " $objItem.MaxMediaSize
      write-host "Minimum Block Size: " $objItem.MinBlockSize
      write-host "Name: " $objItem.Name
      write-host "Needs Cleaning: " $objItem.NeedsCleaning
      write-host "Number Of Media Supported: " $objItem.NumberOfMediaSupported
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host
}


