$strComputer = "."

$colItems = get-wmiobject -class "Win32_Environment" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "InstallationDate: " $objItem.InstallDate
      write-host "Name: " $objItem.Name
      write-host "Status: " $objItem.Status
      write-host "System Variable: " $objItem.SystemVariable
      write-host "User Name: " $objItem.UserName
      write-host "Variable Value: " $objItem.VariableValue
      write-host
}


