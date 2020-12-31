$strComputer = "."

$colItems = get-wmiobject -class "Win32_ComputerSystem" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Administrator Password Status: " $objItem.AdminPasswordStatus
      write-host "Automatic Reset Boot Option: " $objItem.AutomaticResetBootOption
      write-host "Automatic Reset Capability: " $objItem.AutomaticResetCapability
      write-host "Boot Option On Limit: " $objItem.BootOptionOnLimit
      write-host "Boot Option On WatchDog: " $objItem.BootOptionOnWatchDog
      write-host "Boot ROM Supported: " $objItem.BootROMSupported
      write-host "Bootup State: " $objItem.BootupState
      write-host "Caption: " $objItem.Caption
      write-host "Chassis Bootup State: " $objItem.ChassisBootupState
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Current Time Zone: " $objItem.CurrentTimeZone
      write-host "Daylight In Effect: " $objItem.DaylightInEffect
      write-host "Description: " $objItem.Description
      write-host "Domain: " $objItem.Domain
      write-host "Domain Role: " $objItem.DomainRole
      write-host "Enable Daylight Savings Time: " $objItem.EnableDaylightSavingsTime
      write-host "Front Panel Reset Status: " $objItem.FrontPanelResetStatus
      write-host "Infrared Supported: " $objItem.InfraredSupported
      write-host "Initial Load Information: " $objItem.InitialLoadInfo
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Keyboard Password Status: " $objItem.KeyboardPasswordStatus
      write-host "Last Load Information: " $objItem.LastLoadInfo
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Model: " $objItem.Model
      write-host "Name: " $objItem.Name
      write-host "Name Format: " $objItem.NameFormat
      write-host "Network Server Mode Enabled: " $objItem.NetworkServerModeEnabled
      write-host "Number Of Processors: " $objItem.NumberOfProcessors
      write-host "OEM Logo Bitmap: " $objItem.OEMLogoBitmap
      write-host "OEM String Array: " $objItem.OEMStringArray
      write-host "Part Of Domain: " $objItem.PartOfDomain
      write-host "Pause After Reset: " $objItem.PauseAfterReset
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Power-On Password Status: " $objItem.PowerOnPasswordStatus
      write-host "Power State: " $objItem.PowerState
      write-host "Power Supply State: " $objItem.PowerSupplyState
      write-host "Primary Owner Contact: " $objItem.PrimaryOwnerContact
      write-host "Primary Owner Name: " $objItem.PrimaryOwnerName
      write-host "Reset Capability: " $objItem.ResetCapability
      write-host "Reset Count: " $objItem.ResetCount
      write-host "Reset Limit: " $objItem.ResetLimit
      write-host "Roles: " $objItem.Roles
      write-host "Status: " $objItem.Status
      write-host "Support Contact Description: " $objItem.SupportContactDescription
      write-host "System Startup Delay: " $objItem.SystemStartupDelay
      write-host "System Startup Options: " $objItem.SystemStartupOptions
      write-host "System Startup Setting: " $objItem.SystemStartupSetting
      write-host "System Type: " $objItem.SystemType
      write-host "Thermal State: " $objItem.ThermalState
      write-host "Total Physical Memory: " $objItem.TotalPhysicalMemory
      write-host "User Name: " $objItem.UserName
      write-host "WakeUp Type: " $objItem.WakeUpType
      write-host "Workgroup: " $objItem.Workgroup
      write-host
}


