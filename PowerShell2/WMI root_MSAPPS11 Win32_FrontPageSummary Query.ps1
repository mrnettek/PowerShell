$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_FrontPageSummary -computername $computer -namespace $namespace
