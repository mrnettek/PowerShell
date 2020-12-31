$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_JetCoreComponents -computername $computer -namespace $namespace
