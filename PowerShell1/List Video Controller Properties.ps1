$strComputer = "."

$colItems = get-wmiobject -class "Win32_VideoController" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Accelerator Capabilities: " $objItem.AcceleratorCapabilities
      write-host "Adapter Compatibility: " $objItem.AdapterCompatibility
      write-host "Adapter DAC Type: " $objItem.AdapterDACType
      write-host "Adapter RAM: " $objItem.AdapterRAM
      write-host "Availability: " $objItem.Availability
      write-host "Capability Descriptions: " $objItem.CapabilityDescriptions
      write-host "Caption: " $objItem.Caption
      write-host "Color Table Entries: " $objItem.ColorTableEntries
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Current Bits Per Pixel: " $objItem.CurrentBitsPerPixel
      write-host "Current Horizontal Resolution: " $objItem.CurrentHorizontalResolution
      write-host "Current Number Of Colors: " $objItem.CurrentNumberOfColors
      write-host "Current Number Of Columns: " $objItem.CurrentNumberOfColumns
      write-host "Current Number Of Rows: " $objItem.CurrentNumberOfRows
      write-host "Current Refresh Rate: " $objItem.CurrentRefreshRate
      write-host "Current Scan Mode: " $objItem.CurrentScanMode
      write-host "Current Vertical Resolution: " $objItem.CurrentVerticalResolution
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Device Specific Pens: " $objItem.DeviceSpecificPens
      write-host "Dither Type: " $objItem.DitherType
      write-host "Driver Date: " $objItem.DriverDate
      write-host "Driver Version: " $objItem.DriverVersion
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "ICM Intent: " $objItem.ICMIntent
      write-host "ICM Method: " $objItem.ICMMethod
      write-host "Inf File Name: " $objItem.InfFilename
      write-host "Inf Section: " $objItem.InfSection
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Installed Display Drivers: " $objItem.InstalledDisplayDrivers
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Maximum Memory Supported: " $objItem.MaxMemorySupported
      write-host "Maximum Number Controlled: " $objItem.MaxNumberControlled
      write-host "Maximum Refresh Rate: " $objItem.MaxRefreshRate
      write-host "Minimum Refresh Rate: " $objItem.MinRefreshRate
      write-host "Monochrome: " $objItem.Monochrome
      write-host "Name: " $objItem.Name
      write-host "Number Of Color Planes: " $objItem.NumberOfColorPlanes
      write-host "Number Of Video Pages: " $objItem.NumberOfVideoPages
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Protocol Supported: " $objItem.ProtocolSupported
      write-host "Reserved System Palette Entries: " $objItem.ReservedSystemPaletteEntries
      write-host "Specification Version: " $objItem.SpecificationVersion
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "System Palette Entries: " $objItem.SystemPaletteEntries
      write-host "Time Of Last Reset: " $objItem.TimeOfLastReset
      write-host "Video Architecture: " $objItem.VideoArchitecture
      write-host "Video Memory Type: " $objItem.VideoMemoryType
      write-host "Video Mode: " $objItem.VideoMode
      write-host "Video Mode Description: " $objItem.VideoModeDescription
      write-host "Video Processor: " $objItem.VideoProcessor
      write-host
}


