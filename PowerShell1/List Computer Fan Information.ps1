$strComputer = "."

$colItems = get-wmiobject -class "Win32_Fan" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Active Cooling: " $objItem.ActiveCooling
      write-host "Availability: " $objItem.Availability
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Desired Speed: " $objItem.DesiredSpeed
      write-host "Device ID: " $objItem.DeviceID
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Name: " $objItem.Name
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Variable Speed: " $objItem.VariableSpeed
      write-host
}


