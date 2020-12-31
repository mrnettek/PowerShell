$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_PowerPoint11Table -computername $computer -namespace $namespace
