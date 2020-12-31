$strComputer = "."

$colItems = get-wmiobject -class "MicrosoftIE_Object" -namespace "root\CIMV2\Applications\MicrosoftIE" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Code Base: " $objItem.CodeBase
      write-host "Description: " $objItem.Description
      write-host "Program File: " $objItem.ProgramFile
      write-host "Setting ID: " $objItem.SettingID
      write-host "Status: " $objItem.Status
      write-host
}


