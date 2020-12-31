$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_OutlookComAddin -computername $computer -namespace $namespace
