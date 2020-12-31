get-eventlog -logname System -newest 1
$LastEventID = get-eventlog system -newest 1; $LastEventID.EventID
