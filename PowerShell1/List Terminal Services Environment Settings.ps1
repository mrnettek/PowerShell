$strComputer = "."

$colItems = get-wmiobject -class "Win32_TSEnvironmentSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Client Wallpaper: " $objItem.ClientWallPaper
      write-host "Description: " $objItem.Description
      write-host "Initial Program Path: " $objItem.InitialProgramPath
      write-host "Initial Program Policy: " $objItem.InitialProgramPolicy
      write-host "Setting ID: " $objItem.SettingID
      write-host "Start-in: " $objItem.Startin
      write-host "Terminal Name: " $objItem.TerminalName
      write-host
}


