$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_OutlookSummary -computername $computer -namespace $namespace
