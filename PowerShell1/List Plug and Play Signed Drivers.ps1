$strComputer = "."

$colItems = get-wmiobject -class "Win32_PnPSignedDriver" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Class GUIDE: " $objItem.ClassGuid
      write-host "Compatability ID: " $objItem.CompatID
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Device Class: " $objItem.DeviceClass
      write-host "Device ID: " $objItem.DeviceID
      write-host "Device Name: " $objItem.DeviceName
      write-host "Device Loader: " $objItem.DevLoader
      write-host "Driver Date: " $objItem.DriverDate
      write-host "Driver Name: " $objItem.DriverName
      write-host "Driver Provider Name: " $objItem.DriverProviderName
      write-host "Driver Version: " $objItem.DriverVersion
      write-host "Friendly Name: " $objItem.FriendlyName
      write-host "HardWare ID: " $objItem.HardWareID
      write-host "Inf Name: " $objItem.InfName
      write-host "InstallationDate: " $objItem.InstallDate
      write-host "Is Signed: " $objItem.IsSigned
      write-host "Location: " $objItem.Location
      write-host "Manufacturer: " $objItem.Manufacturer
      write-host "Name: " $objItem.Name
      write-host "PDO: " $objItem.PDO
      write-host "Signer: " $objItem.Signer
      write-host "Started: " $objItem.Started
      write-host "Start Mode: " $objItem.StartMode
      write-host "Status: " $objItem.Status
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host
}


