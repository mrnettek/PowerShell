$strComputer = "."

$colItems = get-wmiobject -class "Win32_IP4PersistedRouteTable" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Destination: " $objItem.Destination
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Mask: " $objItem.Mask
      write-host "Metric 1: " $objItem.Metric1
      write-host "Name: " $objItem.Name
      write-host "Next Hop: " $objItem.NextHop
      write-host "Status: " $objItem.Status
      write-host
}


