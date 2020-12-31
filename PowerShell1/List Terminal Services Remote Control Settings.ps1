$strComputer = "."

$colItems = get-wmiobject -class "Win32_TSRemoteControlSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Level Of Control: " $objItem.LevelOfControl
      write-host "Remote Control Policy: " $objItem.RemoteControlPolicy
      write-host "Setting ID: " $objItem.SettingID
      write-host "Terminal Name: " $objItem.TerminalName
      write-host
}


