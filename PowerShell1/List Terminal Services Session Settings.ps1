$strComputer = "."

$colItems = get-wmiobject -class "Win32_TSSessionSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Active Session Limit: " $objItem.ActiveSessionLimit
      write-host "Broken Connection Action: " $objItem.BrokenConnectionAction
      write-host "Broken Connection Policy: " $objItem.BrokenConnectionPolicy
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Disconnected Session Limit: " $objItem.DisconnectedSessionLimit
      write-host "Idle Session Limit: " $objItem.IdleSessionLimit
      write-host "Reconnection Policy: " $objItem.ReconnectionPolicy
      write-host "Setting ID: " $objItem.SettingID
      write-host "Terminal Name: " $objItem.TerminalName
      write-host "Time Limit Policy: " $objItem.TimeLimitPolicy
      write-host
}


