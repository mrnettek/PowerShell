$strComputer = "."

$colItems = get-wmiobject -class "Win32_Battery" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Availability: " $objItem.Availability
      write-host "Battery Recharge Time: " $objItem.BatteryRechargeTime
      write-host "Battery Status: " $objItem.BatteryStatus
      write-host "Caption: " $objItem.Caption
      write-host "Chemistry: " $objItem.Chemistry
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Design Capacity: " $objItem.DesignCapacity
      write-host "Design Voltage: " $objItem.DesignVoltage
      write-host "Device ID: " $objItem.DeviceID
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Estimated Charge Remaining: " $objItem.EstimatedChargeRemaining
      write-host "Estimated Run Time: " $objItem.EstimatedRunTime
      write-host "Expected Battery Life: " $objItem.ExpectedBatteryLife
      write-host "Expected Life: " $objItem.ExpectedLife
      write-host "Full Charge Capacity: " $objItem.FullChargeCapacity
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Maximum Recharge Time: " $objItem.MaxRechargeTime
      write-host "Name: " $objItem.Name
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Smart Battery Version: " $objItem.SmartBatteryVersion
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Time On Battery: " $objItem.TimeOnBattery
      write-host "Time To Full Charge: " $objItem.TimeToFullCharge
      write-host
}

s
