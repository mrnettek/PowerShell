$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_ExcelChart -computername $computer -namespace $namespace
