$strComputer = "."

$colItems = get-wmiobject -class "Win32_ProgIDSpecification" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Check ID: " $objItem.CheckID
      write-host "Check Mode: " $objItem.CheckMode
      write-host "Description: " $objItem.Description
      write-host "Name: " $objItem.Name
      write-host "Parent: " $objItem.Parent
      write-host "ProgID: " $objItem.ProgID
      write-host "Software Element ID: " $objItem.SoftwareElementID
      write-host "Software Element State: " $objItem.SoftwareElementState
      write-host "Target Operating System: " $objItem.TargetOperatingSystem
      write-host "Version: " $objItem.Version
      write-host
}


