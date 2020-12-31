$strComputer = "."

$colItems = get-wmiobject -class "Win32_PointingDevice" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Availability: " $objItem.Availability
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Device Interface: " $objItem.DeviceInterface
      write-host "Double-Speed Threshold: " $objItem.DoubleSpeedThreshold
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Handedness: " $objItem.Handedness
      write-host "Hardware Type: " $objItem.HardwareType
      write-host "Inf File Name: " $objItem.InfFileName
      write-host "Inf Section: " $objItem.InfSection
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Is Locked: " $objItem.IsLocked
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Name: " $objItem.Name
      write-host "Number Of Buttons: " $objItem.NumberOfButtons
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Pointing Type: " $objItem.PointingType
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Quad-Speed Threshold: " $objItem.QuadSpeedThreshold
      write-host "Resolution: " $objItem.Resolution
      write-host "Sample Rate: " $objItem.SampleRate
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "Synch: " $objItem.Synch
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host
}


