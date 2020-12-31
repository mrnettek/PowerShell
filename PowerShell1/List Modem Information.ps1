$strComputer = "."

$colItems = get-wmiobject -class "Win32_POTSModem" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Answer Mode: " $objItem.AnswerMode
      write-host "Attached To: " $objItem.AttachedTo
      write-host "Availability: " $objItem.Availability
      write-host "Blind Off: " $objItem.BlindOff
      write-host "Blind On: " $objItem.BlindOn
      write-host "Caption: " $objItem.Caption
      write-host "Compatibility Flags: " $objItem.CompatibilityFlags
      write-host "Compression Information: " $objItem.CompressionInfo
      write-host "Compression Off: " $objItem.CompressionOff
      write-host "Compression On: " $objItem.CompressionOn
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Configuration Dialog: " $objItem.ConfigurationDialog
      write-host "Countries Supported: " $objItem.CountriesSupported
      write-host "Country Selected: " $objItem.CountrySelected
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Current Passwords: " $objItem.CurrentPasswords
      write-host "DCB: " $objItem.DCB
      write-host "Default: " $objItem.Default
      write-host "Description: " $objItem.Description
      write-host "Device ID: " $objItem.DeviceID
      write-host "Device Loader: " $objItem.DeviceLoader
      write-host "Device Type: " $objItem.DeviceType
      write-host "Dial Type: " $objItem.DialType
      write-host "Driver Date: " $objItem.DriverDate
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Control Forced: " $objItem.ErrorControlForced
      write-host "Error Control Information: " $objItem.ErrorControlInfo
      write-host "Error Control Off: " $objItem.ErrorControlOff
      write-host "Error Control On: " $objItem.ErrorControlOn
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Flow Control Hard: " $objItem.FlowControlHard
      write-host "Flow Control Off: " $objItem.FlowControlOff
      write-host "Flow Control Soft: " $objItem.FlowControlSoft
      write-host "Inactivity Scale: " $objItem.InactivityScale
      write-host "Inactivity Timeout: " $objItem.InactivityTimeout
      write-host "Index: " $objItem.Index
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Maximum Baud Rate To Phone: " $objItem.MaxBaudRateToPhone
      write-host "Maximum Baud Rate To Serial Port: " $objItem.MaxBaudRateToSerialPort
      write-host "Maximum Number Of Passwords: " $objItem.MaxNumberOfPasswords
      write-host "Model: " $objItem.Model
      write-host "Modem Inf Path: " $objItem.ModemInfPath
      write-host "Modem Inf Section: " $objItem.ModemInfSection
      write-host "Modulation Bell: " $objItem.ModulationBell
      write-host "Modulation CCITT: " $objItem.ModulationCCITT
      write-host "Modulation Scheme: " $objItem.ModulationScheme
      write-host "Name: " $objItem.Name
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Port SubClass: " $objItem.PortSubClass
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Prefix: " $objItem.Prefix
      write-host "Properties: " $objItem.Properties
      write-host "Provider Name: " $objItem.ProviderName
      write-host "Pulse: " $objItem.Pulse
      write-host "Reset: " $objItem.Reset
      write-host "Responses Key Name: " $objItem.ResponsesKeyName
      write-host "Rings Before Answer: " $objItem.RingsBeforeAnswer
      write-host "Speaker Mode Dial: " $objItem.SpeakerModeDial
      write-host "Speaker Mode Off: " $objItem.SpeakerModeOff
      write-host "Speaker Mode On: " $objItem.SpeakerModeOn
      write-host "Speaker Mode Setup: " $objItem.SpeakerModeSetup
      write-host "Speaker Volume High: " $objItem.SpeakerVolumeHigh
      write-host "Speaker Volume Info: " $objItem.SpeakerVolumeInfo
      write-host "Speaker Volume Low: " $objItem.SpeakerVolumeLow
      write-host "Speaker Volume Medium: " $objItem.SpeakerVolumeMed
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "String Format: " $objItem.StringFormat
      write-host "Supports Callback: " $objItem.SupportsCallback
      write-host "Supports Synchronous Connect: " $objItem.SupportsSynchronousConnect
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Terminator: " $objItem.Terminator
      write-host "Time Of Last Reset: " $objItem.TimeOfLastReset
      write-host "Tone: " $objItem.Tone
      write-host "Voice Switch Feature: " $objItem.VoiceSwitchFeature
      write-host
}


