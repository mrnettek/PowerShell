$strComputer = "."

$colItems = get-wmiobject -class "Win32_QuotaSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Default Limit: " $objItem.DefaultLimit
      write-host "Default Warning Limit: " $objItem.DefaultWarningLimit
      write-host "Description: " $objItem.Description
      write-host "Exceeded Notification: " $objItem.ExceededNotification
      write-host "Setting ID: " $objItem.SettingID
      write-host "State: " $objItem.State
      write-host "Volume Path: " $objItem.VolumePath
      write-host "Warning Exceeded Notification: " $objItem.WarningExceededNotification
      write-host
}


