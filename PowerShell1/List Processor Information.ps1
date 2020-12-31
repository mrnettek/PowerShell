$strComputer = "."

$colItems = get-wmiobject -class "Win32_Processor" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Address Width: " $objItem.AddressWidth
      write-host "Architecture: " $objItem.Architecture
      write-host "Availability: " $objItem.Availability
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "CPU Status: " $objItem.CpuStatus
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Current Clock Speed: " $objItem.CurrentClockSpeed
      write-host "Current Voltage: " $objItem.CurrentVoltage
      write-host "Data Width: " $objItem.DataWidth
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Ext Clock: " $objItem.ExtClock
      write-host "Family: " $objItem.Family
      write-host "Installation Date: " $objItem.InstallDate
      write-host "L2 Cache Size: " $objItem.L2CacheSize
      write-host "L2 Cache Speed: " $objItem.L2CacheSpeed
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Level: " $objItem.Level
      write-host "Load Percentage: " $objItem.LoadPercentage
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Maximum Clock Speed: " $objItem.MaxClockSpeed
      write-host "Name: " $objItem.Name
      write-host "Other Family Description: " $objItem.OtherFamilyDescription
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Processor ID: " $objItem.ProcessorId
      write-host "Processor Type: " $objItem.ProcessorType
      write-host "Revision: " $objItem.Revision
      write-host "Role: " $objItem.Role
      write-host "Socket Designation: " $objItem.SocketDesignation
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "Stepping: " $objItem.Stepping
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Unique ID: " $objItem.UniqueId
      write-host "Upgrade Method: " $objItem.UpgradeMethod
      write-host "Version: " $objItem.Version
      write-host "Voltage Caps: " $objItem.VoltageCaps
      write-host
}


