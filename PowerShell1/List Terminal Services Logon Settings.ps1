$strComputer = "."

$colItems = get-wmiobject -class "Win32_TSLogonSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Client Logon Information Policy: " $objItem.ClientLogonInfoPolicy
      write-host "Description: " $objItem.Description
      write-host "Domain: " $objItem.Domain
      write-host "Password: " $objItem.Password
      write-host "Prompt For Password: " $objItem.PromptForPassword
      write-host "Setting ID: " $objItem.SettingID
      write-host "Terminal Name: " $objItem.TerminalName
      write-host "User Name: " $objItem.UserName
      write-host
}


