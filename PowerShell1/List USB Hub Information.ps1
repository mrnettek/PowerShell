$strComputer = "."

$colItems = get-wmiobject -class "Win32_USBHub" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Availability: " $objItem.Availability
      write-host "Caption: " $objItem.Caption
      write-host "Class Code: " $objItem.ClassCode
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Current Alternate Settings: " $objItem.CurrentAlternateSettings
      write-host "Current Configuration Value: " $objItem.CurrentConfigValue
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Gang-Switched: " $objItem.GangSwitched
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Name: " $objItem.Name
      write-host "Number Of Configurations: " $objItem.NumberOfConfigs
      write-host "Number Of Ports: " $objItem.NumberOfPorts
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Protocol Code: " $objItem.ProtocolCode
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "Subclass Code: " $objItem.SubclassCode
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "USB Version: " $objItem.USBVersion
      write-host
}


