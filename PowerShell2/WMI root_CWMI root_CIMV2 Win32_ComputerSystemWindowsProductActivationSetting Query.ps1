$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ComputerSystemWindowsProductActivationSetting -computername $computer -namespace $namespace
