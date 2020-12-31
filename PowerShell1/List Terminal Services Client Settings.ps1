$strComputer = "."

$colItems = get-wmiobject -class "Win32_TSClientSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Audio Mapping: " $objItem.AudioMapping
      write-host "Caption: " $objItem.Caption
      write-host "Clipboard Mapping: " $objItem.ClipboardMapping
      write-host "Color Depth: " $objItem.ColorDepth
      write-host "Color Depth Policy: " $objItem.ColorDepthPolicy
      write-host "COM Port Mapping: " $objItem.COMPortMapping
      write-host "Connect Client Drives At Logon: " $objItem.ConnectClientDrivesAtLogon
      write-host "Connection Policy: " $objItem.ConnectionPolicy
      write-host "Connect Printer At Logon: " $objItem.ConnectPrinterAtLogon
      write-host "Default To Client Printer: " $objItem.DefaultToClientPrinter
      write-host "Description: " $objItem.Description
      write-host "Drive Mapping: " $objItem.DriveMapping
      write-host "LPT Port Mapping: " $objItem.LPTPortMapping
      write-host "Setting ID: " $objItem.SettingID
      write-host "Terminal Name: " $objItem.TerminalName
      write-host "Windows Printer Mapping: " $objItem.WindowsPrinterMapping
      write-host
}


