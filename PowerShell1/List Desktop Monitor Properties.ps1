$strComputer = "."

$colItems = get-wmiobject -class "Win32_DesktopMonitor" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Availability: " $objItem.Availability
      write-host "Bandwidth: " $objItem.Bandwidth
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Display Type: " $objItem.DisplayType
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Is Locked: " $objItem.IsLocked
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Monitor Manufacturer: " $objItem.MonitorManufacturer
      write-host "Monitor Type: " $objItem.MonitorType
      write-host "Name: " $objItem.Name
      write-host "Pixels Per X Logical Inch: " $objItem.PixelsPerXLogicalInch
      write-host "Pixels Per Y Logical Inch: " $objItem.PixelsPerYLogicalInch
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Screen Height: " $objItem.ScreenHeight
      write-host "Screen Width: " $objItem.ScreenWidth
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host
}


