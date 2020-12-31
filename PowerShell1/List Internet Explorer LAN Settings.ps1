$strComputer = "."

$colItems = get-wmiobject -class "MicrosoftIE_LanSettings" -namespace "root\CIMV2\Applications\MicrosoftIE" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Auto-Configuration Proxy: " $objItem.AutoConfigProxy
      write-host "Auto-Configuration URL: " $objItem.AutoConfigURL
      write-host "Auto-Proxy Detection Mode: " $objItem.AutoProxyDetectMode
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Proxy: " $objItem.Proxy
      write-host "Proxy Override: " $objItem.ProxyOverride
      write-host "Proxy Server: " $objItem.ProxyServer
      write-host "Setting ID: " $objItem.SettingID
      write-host
}


