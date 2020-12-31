<# 
.SYNOPSIS
    This script gets and displays the static Tick values from TimeSpan Object 
.DESCRIPTION 
    This script create and displays static values.
.NOTES 
    File Name  : Get-TimeTick.ps1 
    Author     : Thomas Lee - tfl@psp.co.uk 
    Requires   : PowerShell V2 CTP3 
.LINK 
    This script posted to: 
        http://pshscripts.blogspot.com/2009/06/get-timetickps1.html
    MSDN Sample posted at: 
        http://msdn.microsoft.com/en-us/library/system.timespan.tickspersecond(VS.85).aspx 
.EXAMPLE 
    PSH [C:\foo]: .\Get-TimeTick.ps1 
    Ticks Per: 
    Day         : 864,000,000,000 
    Hour        :  36,000,000,000 
    Minute      :     600,000,000 
    Second      :      10,000,000 
    Millisecond :          10,000 
#> 
   
## 
# Start of script 
## 
   
# Create the values 
$tsticksperday         = [system.timespan]::ticksperday 
$tsticksperhour        = [system.timespan]::ticksperhour 
$tstickspermillisecond = [system.timespan]::TicksPerMillisecond 
$tsticksperminute      = [system.timespan]::ticksperminute 
$tstickspersecond =      [system.timespan]::tickspersecond 
   
# Display results nicely formatted 
"Ticks Per:"  
"Day         : {0, 15}" -f $tsticksperday.tostring("###,###") 
"Hour        : {0, 15}" -f $tsticksperhour.tostring("###,###") 
"Minute      : {0, 15}" -f $tsticksperminute.tostring("###,###") 
"Second      : {0, 15}" -f $tstickspersecond.tostring("###,###") 
"Millisecond : {0, 15}" -f $tstickspermillisecond.tostring("###,###") 
#End of Script 
