$strComputer = "."

$colItems = get-wmiobject -class "Win32_LocalTime" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Day: " $objItem.Day
      write-host "Day Of Week: " $objItem.DayOfWeek
      write-host "Hour: " $objItem.Hour
      write-host "Milliseconds: " $objItem.Milliseconds
      write-host "Minute: " $objItem.Minute
      write-host "Month: " $objItem.Month
      write-host "Quarter: " $objItem.Quarter
      write-host "Second: " $objItem.Second
      write-host "Week In Month: " $objItem.WeekInMonth
      write-host "Year: " $objItem.Year
      write-host
}


