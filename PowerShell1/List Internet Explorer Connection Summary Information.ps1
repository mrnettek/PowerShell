$strComputer = "."

$colItems = get-wmiobject -class "MicrosoftIE_ConnectionSummary" -namespace "root\CIMV2\Applications\MicrosoftIE" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Connection Preference: " $objItem.ConnectionPreference
      write-host "Description: " $objItem.Description
      write-host "Enable HTTP 1.1: " $objItem.EnableHttp11
      write-host "Proxy HTTP 1.1: " $objItem.ProxyHttp11
      write-host "Setting ID: " $objItem.SettingID
      write-host
}


