$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_OutlookComAddins -computername $computer -namespace $namespace
