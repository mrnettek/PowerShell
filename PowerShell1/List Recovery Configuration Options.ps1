$strComputer = "."

$colItems = get-wmiobject -class "Win32_OSRecoveryConfiguration" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Auto-Reboot: " $objItem.AutoReboot
      write-host "Caption: " $objItem.Caption
      write-host "Debug File Path: " $objItem.DebugFilePath
      write-host "Debug Information Type: " $objItem.DebugInfoType
      write-host "Description: " $objItem.Description
      write-host "Expanded Debug File Path: " $objItem.ExpandedDebugFilePath
      write-host "Expanded Mini-Dump Directory: " $objItem.ExpandedMiniDumpDirectory
      write-host "Kernel-Dump Only: " $objItem.KernelDumpOnly
      write-host "Mini-Dump Directory: " $objItem.MiniDumpDirectory
      write-host "Name: " $objItem.Name
      write-host "Overwrite Existing Debug File: " $objItem.OverwriteExistingDebugFile
      write-host "Send Administrator Alert: " $objItem.SendAdminAlert
      write-host "Setting ID: " $objItem.SettingID
      write-host "Write Debug Information: " $objItem.WriteDebugInfo
      write-host "Write To System Log: " $objItem.WriteToSystemLog
      write-host
}


