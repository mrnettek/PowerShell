$strComputer = "."

$colItems = get-wmiobject -class "Win32_ClassicCOMClassSetting" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Application ID: " $objItem.AppID
      write-host "Auto-Convert To Clsid: " $objItem.AutoConvertToClsid
      write-host "Auto-Treat As Clsid: " $objItem.AutoTreatAsClsid
      write-host "Caption: " $objItem.Caption
      write-host "Component ID: " $objItem.ComponentId
      write-host "Control: " $objItem.Control
      write-host "Default Icon: " $objItem.DefaultIcon
      write-host "Description: " $objItem.Description
      write-host "Inprocess Handler: " $objItem.InprocHandler
      write-host "Inprocess Handler 32: " $objItem.InprocHandler32
      write-host "Inprocess Server: " $objItem.InprocServer
      write-host "Inprocess Server 32: " $objItem.InprocServer32
      write-host "Insertable: " $objItem.Insertable
      write-host "Java Class: " $objItem.JavaClass
      write-host "Local Server: " $objItem.LocalServer
      write-host "Local Server 32: " $objItem.LocalServer32
      write-host "Long Display Name: " $objItem.LongDisplayName
      write-host "ProgId: " $objItem.ProgId
      write-host "Setting ID: " $objItem.SettingID
      write-host "Short Display Name: " $objItem.ShortDisplayName
      write-host "Threading Model: " $objItem.ThreadingModel
      write-host "ToolBox Bitmap 32: " $objItem.ToolBoxBitmap32
      write-host "Treat As Clsid: " $objItem.TreatAsClsid
      write-host "Type Library ID: " $objItem.TypeLibraryId
      write-host "Version: " $objItem.Version
      write-host "Version Independent ProgId: " $objItem.VersionIndependentProgId
      write-host
}


