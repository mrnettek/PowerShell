$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_AccessSummary -computername $computer -namespace $namespace
