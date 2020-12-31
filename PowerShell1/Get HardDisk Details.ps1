$aryComputers = "loopback", "localhost"
Set-Variable -name intDriveType -value 3 -option constant #constant for local disk

foreach ($strComputer in $aryComputers)
   
   {"Hard drives on: " + $strComputer
   Get-WmiObject -class win32_logicaldisk -computername $strComputer| 
      where {$_.drivetype -eq $intDriveType}}
