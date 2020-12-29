# MrNetTek
# eddiejackson.net/blog
# 10/18/2020
# free for public use
# free to claim as your own
 
Clear-Host
 
$Computer = $ENV:COMPUTERNAME
 
# Get Time Zone on a computer
$timezone = Get-WMIObject -class Win32_TimeZone -ComputerName $Computer
 
# Show TZ Info
"Daylight Name  : {0}" -f $timezone.DaylightName
"Standard Name  : {0}" -f $timezone.StandardName
 
Write-Host "`nDone!`n"