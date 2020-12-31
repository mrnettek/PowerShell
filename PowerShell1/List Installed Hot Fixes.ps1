$strComputer = "."

$colItems = get-wmiobject -class "Win32_QuickFixEngineering" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "CS Name: " $objItem.CSName
      write-host "Description: " $objItem.Description
      write-host "Fix Comments: " $objItem.FixComments
      write-host "HotFix ID: " $objItem.HotFixID
      write-host "InstallationDate: " $objItem.InstallDate
      write-host "Installed By: " $objItem.InstalledBy
      write-host "Installed On: " $objItem.InstalledOn
      write-host "Name: " $objItem.Name
      write-host "Service Pack In Effect: " $objItem.ServicePackInEffect
      write-host "Status: " $objItem.Status
      write-host
}


