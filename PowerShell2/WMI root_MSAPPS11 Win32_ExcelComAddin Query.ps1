$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_ExcelComAddin -computername $computer -namespace $namespace
