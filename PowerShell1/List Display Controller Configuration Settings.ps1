$strComputer = "."

$colItems = get-wmiobject -class "Win32_DisplayControllerConfiguration" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Bits Per Pixel: " $objItem.BitsPerPixel
      write-host "Caption: " $objItem.Caption
      write-host "Color Planes: " $objItem.ColorPlanes
      write-host "Description: " $objItem.Description
      write-host "Device Entries In A Color Table: " $objItem.DeviceEntriesInAColorTable
      write-host "Device SpecificPens: " $objItem.DeviceSpecificPens
      write-host "Horizontal Resolution: " $objItem.HorizontalResolution
      write-host "Name: " $objItem.Name
      write-host "Refresh Rate: " $objItem.RefreshRate
      write-host "Reserved System Palette Entries: " $objItem.ReservedSystemPaletteEntries
      write-host "Setting ID: " $objItem.SettingID
      write-host "System Palette Entries: " $objItem.SystemPaletteEntries
      write-host "Vertical Resolution: " $objItem.VerticalResolution
      write-host "Video Mode: " $objItem.VideoMode
      write-host
}


