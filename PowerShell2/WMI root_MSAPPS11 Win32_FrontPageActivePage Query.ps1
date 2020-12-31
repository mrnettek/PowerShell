$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_FrontPageActivePage -computername $computer -namespace $namespace
