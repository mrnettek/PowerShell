$strComputer = "."

$colItems = get-wmiobject -class "MicrosoftIE_Summary" -namespace "root\CIMV2\Applications\MicrosoftIE" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Active Printer: " $objItem.ActivePrinter
      write-host "Build: " $objItem.Build
      write-host "Caption: " $objItem.Caption
      write-host "Cipher Strength: " $objItem.CipherStrength
      write-host "Content Advisor: " $objItem.ContentAdvisor
      write-host "Description: " $objItem.Description
      write-host "IEAK Installed: " $objItem.IEAKInstall
      write-host "Language: " $objItem.Language
      write-host "Name: " $objItem.Name
      write-host "Path: " $objItem.Path
      write-host "Product ID: " $objItem.ProductID
      write-host "Setting ID: " $objItem.SettingID
      write-host "Version: " $objItem.Version
      write-host
}


