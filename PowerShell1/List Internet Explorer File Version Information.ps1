$strComputer = "."

$colItems = get-wmiobject -class "MicrosoftIE_FileVersion" -namespace "root\CIMV2\Applications\MicrosoftIE" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Company: " $objItem.Company
      write-host "Date: " $objItem.Date
      write-host "Description: " $objItem.Description
      write-host "File: " $objItem.File
      write-host "Path: " $objItem.Path
      write-host "Setting ID: " $objItem.SettingID
      write-host "Size: " $objItem.Size
      write-host "Version: " $objItem.Version
      write-host
}

