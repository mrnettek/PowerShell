$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Publisher11Styles -computername $computer -namespace $namespace
