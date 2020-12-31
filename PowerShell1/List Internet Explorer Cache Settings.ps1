$strComputer = "."

$colItems = get-wmiobject -class "MicrosoftIE_Cache" -namespace "root\CIMV2\Applications\MicrosoftIE" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Available Cache Size: " $objItem.AvailableCacheSize
      write-host "Available Disk Space: " $objItem.AvailableDiskSpace
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Maximum Cache Size: " $objItem.MaxCacheSize
      write-host "Page Refresh Type: " $objItem.PageRefreshType
      write-host "Setting ID: " $objItem.SettingID
      write-host "Temporarfy Internet Files Folder: " $objItem.TempInternetFilesFolder
      write-host "Total Disk Space: " $objItem.TotalDiskSpace
      write-host
}


