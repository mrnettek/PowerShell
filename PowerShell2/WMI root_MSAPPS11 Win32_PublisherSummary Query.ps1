$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_PublisherSummary -computername $computer -namespace $namespace
