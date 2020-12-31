$strComputer = "."

$colItems = get-wmiobject -class "Win32_TSGeneralSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Comment: " $objItem.Comment
      write-host "Description: " $objItem.Description
      write-host "Minimum Encryption Level: " $objItem.MinEncryptionLevel
      write-host "Setting ID: " $objItem.SettingID
      write-host "Terminal Name: " $objItem.TerminalName
      write-host "Terminal Protocol: " $objItem.TerminalProtocol
      write-host "Transport: " $objItem.Transport
      write-host "Windows Authentication: " $objItem.WindowsAuthentication
      write-host
}


