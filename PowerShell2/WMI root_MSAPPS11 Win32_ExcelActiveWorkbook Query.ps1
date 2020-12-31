$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_ExcelActiveWorkbook -computername $computer -namespace $namespace
