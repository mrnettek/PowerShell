$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_OfficeWatsonLog -computername $computer -namespace $namespace
