$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Publisher11Hyperlinks -computername $computer -namespace $namespace
