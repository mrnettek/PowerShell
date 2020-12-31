$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_PowerPointActivePresentation -computername $computer -namespace $namespace
