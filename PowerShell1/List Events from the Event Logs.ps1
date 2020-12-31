$strComputer = "."

$colItems = get-wmiobject -class "Win32_NTLogEvent" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Category: " $objItem.Category
      write-host "Category String: " $objItem.CategoryString
      write-host "Compute rName: " $objItem.ComputerName
      write-host "Data: " $objItem.Data
      write-host "Event Code: " $objItem.EventCode
      write-host "Event Identifier: " $objItem.EventIdentifier
      write-host "Event Type: " $objItem.EventType
      write-host "Insertion Strings: " $objItem.InsertionStrings
      write-host "Logfile: " $objItem.Logfile
      write-host "Message: " $objItem.Message
      write-host "Record Number: " $objItem.RecordNumber
      write-host "Source Name: " $objItem.SourceName
      write-host "Time Generated: " $objItem.TimeGenerated
      write-host "Time Written: " $objItem.TimeWritten
      write-host "Type: " $objItem.Type
      write-host "User: " $objItem.User
      write-host
}


