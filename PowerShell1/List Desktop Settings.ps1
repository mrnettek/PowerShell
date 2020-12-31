$strComputer = "."

$colItems = get-wmiobject -class "Win32_Desktop" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Border Width: " $objItem.BorderWidth
      write-host "Caption: " $objItem.Caption
      write-host "Cool Switch: " $objItem.CoolSwitch
      write-host "Cursor Blink Rate: " $objItem.CursorBlinkRate
      write-host "Description: " $objItem.Description
      write-host "Drag Full Windows: " $objItem.DragFullWindows
      write-host "Grid Granularity: " $objItem.GridGranularity
      write-host "Icon Spacing: " $objItem.IconSpacing
      write-host "Icon Title Face Name: " $objItem.IconTitleFaceName
      write-host "Icon Title Size: " $objItem.IconTitleSize
      write-host "Icon Title Wrap: " $objItem.IconTitleWrap
      write-host "Name: " $objItem.Name
      write-host "Pattern: " $objItem.Pattern
      write-host "Screensaver Active: " $objItem.ScreenSaverActive
      write-host "Screensaver Executable: " $objItem.ScreenSaverExecutable
      write-host "Screensaver Secure: " $objItem.ScreenSaverSecure
      write-host "Screensaver Timeout: " $objItem.ScreenSaverTimeout
      write-host "Setting ID: " $objItem.SettingID
      write-host "Wallpaper: " $objItem.Wallpaper
      write-host "Wallpaper Stretched: " $objItem.WallpaperStretched
      write-host "Wallpaper Tiled: " $objItem.WallpaperTiled
      write-host
}


