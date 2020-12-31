$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_ExcelAddIns -computername $computer -namespace $namespace
