$strComputer = "."

$colItems = get-wmiobject -class "Win32_TimeZone" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Bias: " $objItem.Bias
      write-host "Caption: " $objItem.Caption
      write-host "Daylight Bias: " $objItem.DaylightBias
      write-host "Daylight Day: " $objItem.DaylightDay
      write-host "Daylight Day Of Week: " $objItem.DaylightDayOfWeek
      write-host "Daylight Hour: " $objItem.DaylightHour
      write-host "Daylight Millisecond: " $objItem.DaylightMillisecond
      write-host "Daylight Minute: " $objItem.DaylightMinute
      write-host "Daylight Month: " $objItem.DaylightMonth
      write-host "Daylight Name: " $objItem.DaylightName
      write-host "Daylight Second: " $objItem.DaylightSecond
      write-host "Daylight Year: " $objItem.DaylightYear
      write-host "Description: " $objItem.Description
      write-host "Setting ID: " $objItem.SettingID
      write-host "Standard Bias: " $objItem.StandardBias
      write-host "Standard Day: " $objItem.StandardDay
      write-host "Standard DayOfWeek: " $objItem.StandardDayOfWeek
      write-host "Standard Hour: " $objItem.StandardHour
      write-host "Standard Millisecond: " $objItem.StandardMillisecond
      write-host "Standard Minute: " $objItem.StandardMinute
      write-host "Standard Month: " $objItem.StandardMonth
      write-host "Standard Name: " $objItem.StandardName
      write-host "Standard Second: " $objItem.StandardSecond
      write-host "Standard Year: " $objItem.StandardYear
      write-host
}


