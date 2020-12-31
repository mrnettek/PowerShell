$strComputer = "."

$colItems = get-wmiobject -class "Win32_Printer" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Attributes: " $objItem.Attributes
      write-host "Availability: " $objItem.Availability
      write-host "Available Job Sheets: " $objItem.AvailableJobSheets
      write-host "Average Pages Per Minute: " $objItem.AveragePagesPerMinute
      write-host "Capabilities: " $objItem.Capabilities
      write-host "Capability Descriptions: " $objItem.CapabilityDescriptions
      write-host "Caption: " $objItem.Caption
      write-host "Character Sets Supported: " $objItem.CharSetsSupported
      write-host "Comment: " $objItem.Comment
      write-host "Configuration Manager Error Code: " $objItem.ConfigManagerErrorCode
      write-host "Configuration Manager User Configuration: " $objItem.ConfigManagerUserConfig
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Current Capabilities: " $objItem.CurrentCapabilities
      write-host "Current Character Set: " $objItem.CurrentCharSet
      write-host "Current Language: " $objItem.CurrentLanguage
      write-host "Current MIME Type: " $objItem.CurrentMimeType
      write-host "Current Natural Language: " $objItem.CurrentNaturalLanguage
      write-host "Current Paper Type: " $objItem.CurrentPaperType
      write-host "Default: " $objItem.Default
      write-host "Default Capabilities: " $objItem.DefaultCapabilities
      write-host "Default Copies: " $objItem.DefaultCopies
      write-host "Default Language: " $objItem.DefaultLanguage
      write-host "Default MIME Type: " $objItem.DefaultMimeType
      write-host "Default Number Up: " $objItem.DefaultNumberUp
      write-host "Default Paper Type: " $objItem.DefaultPaperType
      write-host "Default Priority: " $objItem.DefaultPriority
      write-host "Description: " $objItem.Description
      write-host "Detected Error State: " $objItem.DetectedErrorState
      write-host "Device ID: " $objItem.DeviceID
      write-host "Direct: " $objItem.Direct
      write-host "Do Complete First: " $objItem.DoCompleteFirst
      write-host "Driver Name: " $objItem.DriverName
      write-host "Enable BIDI: " $objItem.EnableBIDI
      write-host "Enable Device Query Print: " $objItem.EnableDevQueryPrint
      write-host "Error Cleared: " $objItem.ErrorCleared
      write-host "Error Description: " $objItem.ErrorDescription
      write-host "Error Information: " $objItem.ErrorInformation
      write-host "Extended Detected Error State: " $objItem.ExtendedDetectedErrorState
      write-host "Extended Printer Status: " $objItem.ExtendedPrinterStatus
      write-host "Hidden: " $objItem.Hidden
      write-host "Horizontal Resolution: " $objItem.HorizontalResolution
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Job Count Since Last Reset: " $objItem.JobCountSinceLastReset
      write-host "Keep Printed Jobs: " $objItem.KeepPrintedJobs
      write-host "Languages Supported: " $objItem.LanguagesSupported
      write-host "Last Error Code: " $objItem.LastErrorCode
      write-host "Local: " $objItem.Local
      write-host "Location: " $objItem.Location
      write-host "Marking Technology: " $objItem.MarkingTechnology
      write-host "Maximum Copies: " $objItem.MaxCopies
      write-host "Maximum Number Up: " $objItem.MaxNumberUp
      write-host "Maximum Size Supported: " $objItem.MaxSizeSupported
      write-host "MIME Types Supported: " $objItem.MimeTypesSupported
      write-host "Name: " $objItem.Name
      write-host "Natural Languages Supported: " $objItem.NaturalLanguagesSupported
      write-host "Network: " $objItem.Network
      write-host "Paper Sizes Supported: " $objItem.PaperSizesSupported
      write-host "Paper Types Available: " $objItem.PaperTypesAvailable
      write-host "Parameters: " $objItem.Parameters
      write-host "PNP Device ID: " $objItem.PNPDeviceID
      write-host "Port Name: " $objItem.PortName
      write-host "Power Management Capabilities: " $objItem.PowerManagementCapabilities
      write-host "Power Management Supported: " $objItem.PowerManagementSupported
      write-host "Printer Paper Names: " $objItem.PrinterPaperNames
      write-host "Printer State: " $objItem.PrinterState
      write-host "Printer Status: " $objItem.PrinterStatus
      write-host "Print Job Data Type: " $objItem.PrintJobDataType
      write-host "Print Processor: " $objItem.PrintProcessor
      write-host "Priority: " $objItem.Priority
      write-host "Published: " $objItem.Published
      write-host "Queued: " $objItem.Queued
      write-host "Raw-Only: " $objItem.RawOnly
      write-host "Separator File: " $objItem.SeparatorFile
      write-host "Server Name: " $objItem.ServerName
      write-host "Shared: " $objItem.Shared
      write-host "Share Name: " $objItem.ShareName
      write-host "Spool Enabled: " $objItem.SpoolEnabled
      write-host "Start Time: " $objItem.StartTime
      write-host "Status: " $objItem.Status
      write-host "Status Information: " $objItem.StatusInfo
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Time Of Last Reset: " $objItem.TimeOfLastReset
      write-host "Until Time: " $objItem.UntilTime
      write-host "Vertical Resolution: " $objItem.VerticalResolution
      write-host "Work Offline: " $objItem.WorkOffline
      write-host
}


