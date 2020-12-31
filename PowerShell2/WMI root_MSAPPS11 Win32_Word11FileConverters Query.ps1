$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Word11FileConverters -computername $computer -namespace $namespace
