$computer = "LocalHost" 
$namespace = "root\Policy" 
Get-WmiObject -class MSFT_SomFilter -computername $computer -namespace $namespace
