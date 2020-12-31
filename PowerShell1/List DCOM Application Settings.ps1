$strComputer = "."

$colItems = get-wmiobject -class "Win32_DCOMApplicationSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Application ID: " $objItem.AppID
      write-host "Authentication Level: " $objItem.AuthenticationLevel
      write-host "Caption: " $objItem.Caption
      write-host "Custom Surrogate: " $objItem.CustomSurrogate
      write-host "Description: " $objItem.Description
      write-host "Enable At Storage Activation: " $objItem.EnableAtStorageActivation
      write-host "Local Service: " $objItem.LocalService
      write-host "Remote Server Name: " $objItem.RemoteServerName
      write-host "Run As User: " $objItem.RunAsUser
      write-host "Service Parameters: " $objItem.ServiceParameters
      write-host "Setting ID: " $objItem.SettingID
      write-host "Use Surrogate: " $objItem.UseSurrogate
      write-host
}


