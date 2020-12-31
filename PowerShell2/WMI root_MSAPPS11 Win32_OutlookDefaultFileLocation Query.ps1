$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_OutlookDefaultFileLocation -computername $computer -namespace $namespace
