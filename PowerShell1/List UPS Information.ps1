$strComputer = "."

$colItems = get-wmiobject -class "Win32_UninterruptiblePowerSupply" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Active Input Voltage: " $objItem.ActiveInputVoltage
      write-host "Availability: " $objItem.Availability
      write-host "Battery Installed: " $objItem.BatteryInstalled
      write-host "Can Turn-Off Remotely: " $objItem.CanTurnOffRemotely
      write-host "Caption: " $objItem.Caption
      write-host "Command File: " $objItem.CommandFile
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Estimated Charge Remaining: " $objItem.EstimatedChargeRemaining
      write-host "Estimated Run Time: " $objItem.EstimatedRunTime
      write-host "First Message Delay: " $objItem.FirstMessageDelay
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Is Switching Supply: " $objItem.IsSwitchingSupply
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Low-Battery Signal: " $objItem.LowBatterySignal
      write-host "Message Interval: " $objItem.MessageInterval
      write-host "Name: " $objItem.Name
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Power Failure Signal: " $objItem.PowerFailSignal
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Range1 Input Frequency High: " $objItem.Range1InputFrequencyHigh
      write-host "Range1 Input Frequency Low: " $objItem.Range1InputFrequencyLow
      write-host "Range1 Input Voltage High: " $objItem.Range1InputVoltageHigh
      write-host "Range1 Input Voltage Low: " $objItem.Range1InputVoltageLow
      write-host "Range2 Input Frequency High: " $objItem.Range2InputFrequencyHigh
      write-host "Range2 Input Frequency Low: " $objItem.Range2InputFrequencyLow
      write-host "Range2 Input Voltage High: " $objItem.Range2InputVoltageHigh
      write-host "Range2 Input Voltage Low: " $objItem.Range2InputVoltageLow
      write-host "Remaining Capacity Status: " $objItem.RemainingCapacityStatus
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Time On Backup: " $objItem.TimeOnBackup
      write-host "Total Output Power: " $objItem.TotalOutputPower
      write-host "Type Of Range Switching: " $objItem.TypeOfRangeSwitching
      write-host "UPS Port: " $objItem.UPSPort
      write-host
}


