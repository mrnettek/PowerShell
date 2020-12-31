$strComputer = "."

$colItems = get-wmiobject -class "Win32_DiskQuota" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Disk Space Used: " $objItem.DiskSpaceUsed
      write-host "Limit: " $objItem.Limit
      write-host "Quota Volume: " $objItem.QuotaVolume
      write-host "Status: " $objItem.Status
      write-host "User: " $objItem.User
      write-host "Warning Limit: " $objItem.WarningLimit
      write-host
}


