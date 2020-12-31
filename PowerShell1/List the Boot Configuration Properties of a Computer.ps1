$strComputer = "."

$colItems = get-wmiobject -class "Win32_BootConfiguration" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Boot Directory: " $objItem.BootDirectory
      write-host "Caption: " $objItem.Caption
      write-host "Configuration Path: " $objItem.ConfigurationPath
      write-host "Description: " $objItem.Description
      write-host "Last Drive: " $objItem.LastDrive
      write-host "Name: " $objItem.Name
      write-host "Scratch Directory: " $objItem.ScratchDirectory
      write-host "Setting ID: " $objItem.SettingID
      write-host "Temporary Directory: " $objItem.TempDirectory
      write-host
}


