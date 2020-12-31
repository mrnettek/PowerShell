$strComputer = "."

$colItems = get-wmiobject -class "Win32_WMISetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "ASP Script Default Namespace: " $objItem.ASPScriptDefaultNamespace
      write-host "ASP Script Enabled: " $objItem.ASPScriptEnabled
      write-host "Autorecover Mofs: " $objItem.AutorecoverMofs
      write-host "Autostart Win9X: " $objItem.AutoStartWin9X
      write-host "Backup Interval: " $objItem.BackupInterval
      write-host "Backup Last Time: " $objItem.BackupLastTime
      write-host "Build Version: " $objItem.BuildVersion
      write-host "Caption: " $objItem.Caption
      write-host "Database Directory: " $objItem.DatabaseDirectory
      write-host "Database Maximum Size: " $objItem.DatabaseMaxSize
      write-host "Description: " $objItem.Description
      write-host "Enable Anonymous Win9x Connections: " $objItem.EnableAnonWin9xConnections
      write-host "Enable Events: " $objItem.EnableEvents
      write-host "Enable Startup Heap Preallocation: " $objItem.EnableStartupHeapPreallocation
      write-host "High Threshold On Client Objects: " $objItem.HighThresholdOnClientObjects
      write-host "High Threshold On Events: " $objItem.HighThresholdOnEvents
      write-host "Installation Directory: " $objItem.InstallationDirectory
      write-host "Last Startup Heap Preallocation: " $objItem.LastStartupHeapPreallocation
      write-host "Logging Directory: " $objItem.LoggingDirectory
      write-host "Logging Level: " $objItem.LoggingLevel
      write-host "Low Threshold On Client Objects: " $objItem.LowThresholdOnClientObjects
      write-host "Low Threshold On Events: " $objItem.LowThresholdOnEvents
      write-host "Maximum Log File Size: " $objItem.MaxLogFileSize
      write-host "Maximum Wait On Client Objects: " $objItem.MaxWaitOnClientObjects
      write-host "Maximum Wait On Events: " $objItem.MaxWaitOnEvents
      write-host "MOF Self-Install Directory: " $objItem.MofSelfInstallDirectory
      write-host "Setting ID: " $objItem.SettingID
      write-host
}


