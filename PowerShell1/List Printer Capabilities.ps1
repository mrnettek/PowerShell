$strComputer = "."

$colItems = get-wmiobject -class "Win32_PrinterConfiguration" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Bits Per Pel: " $objItem.BitsPerPel
      write-host "Caption: " $objItem.Caption
      write-host "Collate: " $objItem.Collate
      write-host "Color: " $objItem.Color
      write-host "Copies: " $objItem.Copies
      write-host "Description: " $objItem.Description
      write-host "Device Name: " $objItem.DeviceName
      write-host "Display Flags: " $objItem.DisplayFlags
      write-host "Display Frequency: " $objItem.DisplayFrequency
      write-host "Dither Type: " $objItem.DitherType
      write-host "Driver Version: " $objItem.DriverVersion
      write-host "Duplex: " $objItem.Duplex
      write-host "Form Name: " $objItem.FormName
      write-host "Horizontal Resolution: " $objItem.HorizontalResolution
      write-host "ICM Intent: " $objItem.ICMIntent
      write-host "ICM Method: " $objItem.ICMMethod
      write-host "Log Pixels: " $objItem.LogPixels
      write-host "Media Type: " $objItem.MediaType
      write-host "Name: " $objItem.Name
      write-host "Orientation: " $objItem.Orientation
      write-host "Paper Length: " $objItem.PaperLength
      write-host "Paper Size: " $objItem.PaperSize
      write-host "Paper Width: " $objItem.PaperWidth
      write-host "Pels Height: " $objItem.PelsHeight
      write-host "Pels Width: " $objItem.PelsWidth
      write-host "Print Quality: " $objItem.PrintQuality
      write-host "Scale: " $objItem.Scale
      write-host "Setting ID: " $objItem.SettingID
      write-host "Specification Version: " $objItem.SpecificationVersion
      write-host "TT Option: " $objItem.TTOption
      write-host "Vertical Resolution: " $objItem.VerticalResolution
      write-host "X Resolution: " $objItem.XResolution
      write-host "Y Resolution: " $objItem.YResolution
      write-host
}


