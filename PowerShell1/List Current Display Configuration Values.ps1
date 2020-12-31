$strComputer = "."

$colItems = get-wmiobject -class "Win32_DisplayConfiguration" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Bits Per Pel: " $objItem.BitsPerPel
      write-host "Caption: " $objItem.Caption
      write-host "Description: " $objItem.Description
      write-host "Device Name: " $objItem.DeviceName
      write-host "Display Flags: " $objItem.DisplayFlags
      write-host "Display Frequency: " $objItem.DisplayFrequency
      write-host "Dither Type: " $objItem.DitherType
      write-host "Driver Version: " $objItem.DriverVersion
      write-host "ICM Intent: " $objItem.ICMIntent
      write-host "ICM Method: " $objItem.ICMMethod
      write-host "Log Pixels: " $objItem.LogPixels
      write-host "Pels Height: " $objItem.PelsHeight
      write-host "Pels Width: " $objItem.PelsWidth
      write-host "Setting ID: " $objItem.SettingID
      write-host "Specification Version: " $objItem.SpecificationVersion
      write-host
}


