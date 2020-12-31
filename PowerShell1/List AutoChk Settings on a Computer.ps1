$strComputer = "."

$colItems = get-wmiobject -class "Win32_AutochkSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Setting ID: " $objItem.SettingID
      write-host "User Input Delay: " $objItem.UserInputDelay
      write-host
}


