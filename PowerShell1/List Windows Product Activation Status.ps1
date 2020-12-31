$strComputer = "."

$colItems = get-wmiobject -class "Win32_WindowsProductActivation" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Activation Required: " $objItem.ActivationRequired
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Is Notification On: " $objItem.IsNotificationOn
      write-host "Product ID: " $objItem.ProductID
      write-host "Remaining Evaluation Period: " $objItem.RemainingEvaluationPeriod
      write-host "Remaining Grace Period: " $objItem.RemainingGracePeriod
      write-host "Server Name: " $objItem.ServerName
      write-host "Setting ID: " $objItem.SettingID
      write-host
}


