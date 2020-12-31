$strComputer = "."

$colItems = get-wmiobject -class "MicrosoftIE_Security" -namespace "root\CIMV2\Applications\MicrosoftIE" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Level: " $objItem.Level
      write-host "Setting ID: " $objItem.SettingID
      write-host "Zone: " $objItem.Zone
      write-host
}


