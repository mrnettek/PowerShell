$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_OutlookStartupFolder -computername $computer -namespace $namespace
