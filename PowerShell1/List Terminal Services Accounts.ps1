$strComputer = "."

$colItems = get-wmiobject -class "Win32_TSAccount" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Account Name: " $objItem.AccountName
      write-host "Audit Failures: " $objItem.AuditFail
      write-host "Audit Successes: " $objItem.AuditSuccess
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Permissions Allowed: " $objItem.PermissionsAllowed
      write-host "Permissions Denied: " $objItem.PermissionsDenied
      write-host "Setting ID: " $objItem.SettingID
      write-host "SID: " $objItem.SID
      write-host "Terminal Name: " $objItem.TerminalName
      write-host
}


