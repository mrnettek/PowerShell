$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_AccessDatabase -computername $computer -namespace $namespace
