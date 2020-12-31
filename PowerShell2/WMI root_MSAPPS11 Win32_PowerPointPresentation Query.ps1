$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_PowerPointPresentation -computername $computer -namespace $namespace
