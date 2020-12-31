$strComputer = "."

$colItems = get-wmiobject -class "Win32_PingStatus" -namespace "root\CIMV2" `
-filter "Address = '192.168.1.1'" -computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Address: " $objItem.Address
      write-host "Buffer Size: " $objItem.BufferSize
      write-host "No Fragmentation: " $objItem.NoFragmentation
      write-host "Primary Address Resolution Status: " $objItem.PrimaryAddressResolutionStatus
      write-host "Protocol Address: " $objItem.ProtocolAddress
      write-host "Protocol Address Resolved: " $objItem.ProtocolAddressResolved
      write-host "Record Route: " $objItem.RecordRoute
      write-host "Reply Inconsistency: " $objItem.ReplyInconsistency
      write-host "Reply Size: " $objItem.ReplySize
      write-host "Resolve Address Names: " $objItem.ResolveAddressNames
      write-host "Response Time: " $objItem.ResponseTime
      write-host "Response Time-To-Live: " $objItem.ResponseTimeToLive
      write-host "Route Record: " $objItem.RouteRecord
      write-host "Route Record Resolved: " $objItem.RouteRecordResolved
      write-host "Source Route: " $objItem.SourceRoute
      write-host "Source Route Type: " $objItem.SourceRouteType
      write-host "Status Code: " $objItem.StatusCode
      write-host "Timeout: " $objItem.Timeout
      write-host "Timestamp Record: " $objItem.TimeStampRecord
      write-host "Timestamp Record Address: " $objItem.TimeStampRecordAddress
      write-host "Timestamp Record Address Resolved: " $objItem.TimeStampRecordAddressResolved
      write-host "Timestamp Route: " $objItem.TimestampRoute
      write-host "Time-To-Live: " $objItem.TimeToLive
      write-host "Type of Service: " $objItem.TypeofService
      write-host
}


