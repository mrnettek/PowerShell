$strComputer = "."

$colItems = get-wmiobject -class "Win32_BIOS" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "BIOS Characteristics: " $objItem.BiosCharacteristics
      write-host "BIOS Version: " $objItem.BIOSVersion
      write-host "Build Number: " $objItem.BuildNumber
      write-host "Caption: " $objItem.Caption
      write-host "Code Set: " $objItem.CodeSet
      write-host "Current Language: " $objItem.CurrentLanguage
      write-host "Description: " $objItem.Description
      write-host "Identification Code: " $objItem.IdentificationCode
      write-host "Installable Languages: " $objItem.InstallableLanguages
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Language Edition: " $objItem.LanguageEdition
      write-host "List Of Languages: " $objItem.ListOfLanguages
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Name: " $objItem.Name
      write-host "Other Target Operating System: " $objItem.OtherTargetOS
      write-host "Primary BIOS: " $objItem.PrimaryBIOS
      write-host "Release Date: " $objItem.ReleaseDate
      write-host "Serial Number: " $objItem.SerialNumber
      write-host "SMBIOS BIOS Version: " $objItem.SMBIOSBIOSVersion
      write-host "SMBIOS Major Version: " $objItem.SMBIOSMajorVersion
      write-host "SMBIOS Minor Version: " $objItem.SMBIOSMinorVersion
      write-host "SMBIOS Present: " $objItem.SMBIOSPresent
      write-host "Software Element ID: " $objItem.SoftwareElementID
      write-host "Software Element State: " $objItem.SoftwareElementState
      write-host "Status: " $objItem.Status
      write-host "Target Operating System: " $objItem.TargetOperatingSystem
      write-host "Version: " $objItem.Version
      write-host
}


