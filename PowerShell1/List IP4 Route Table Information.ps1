$strComputer = "."

$colItems = get-wmiobject -class "Win32_IP4RouteTable" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Age: " $objItem.Age
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Destination: " $objItem.Destination
      write-host "Information: " $objItem.Information
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Interface Index: " $objItem.InterfaceIndex
      write-host "Mask: " $objItem.Mask
      write-host "Metric 1: " $objItem.Metric1
      write-host "Metric 2: " $objItem.Metric2
      write-host "Metric 3: " $objItem.Metric3
      write-host "Metric 4: " $objItem.Metric4
      write-host "Metric 5: " $objItem.Metric5
      write-host "Name: " $objItem.Name
      write-host "Next Hop: " $objItem.NextHop
      write-host "Protocol: " $objItem.Protocol
      write-host "Status: " $objItem.Status
      write-host "Type: " $objItem.Type
      write-host
}

 
