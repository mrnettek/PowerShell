$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_OutlookAlternateStartupFile -computername $computer -namespace $namespace
