$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Access11JetComponents -computername $computer -namespace $namespace
