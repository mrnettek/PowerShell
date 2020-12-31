<#
.SYNOPSIS
    This script displays basic performance information for a computer
.DESCRIPTION
    This script calls Get-Counter on a computer to obtain default 
    performance counters. These are obtained and displayed. The script
    takes a paramater which is the host name to display.
.NOTES
    File Name  : Get-Performance.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: . 'C:\Users\tfl\AppData\Local\Temp\Untitled4.ps1'
    Basic Performance for system: Cookham8
     Network Bytes Per Second (2 adapters)
       broadcom netxtreme gigabit etherne          0.00 kbps
       netgear fa311v2 pci adapter                 8.15 kbps
     CPU Usage                                     1.93 %
     Committed Bytes                              30.61 mb
     Cache Faults                                  0.00 p/s
     Percent Disk Time                            34.15 %
     Disk Queue length                             0.00
.EXAMPLE
    PSH [C:\foo]: . 'C:\Users\tfl\AppData\Local\Temp\Untitled4.ps1' cookham2
    Basic Performance for system: cookham2
     Network Bytes Per Second (6 adapters)
       public                                     25.31 kbps
       broadcom netxtreme 57xx gigabit co         26.20 kbps
       internal                                    0.16 kbps
       isatap.cookham.net                          0.00 kbps
       teredo tunneling pseudo-interface           0.00 kbps
       isatap.{0b3c0adc-3418-4842-8b4e-cf          0.00 kbps
     CPU Usage                                     0.39 %
     Committed Bytes                              45.80 mb
     Cache Faults                                  0.00 p/s
     Percent Disk Time                             0.00 %
     Disk Queue length                             0.00
.PARAMETER comp
    The name of the computer to displaly. Default is localhost.
#>

param (
[string] $comp = "localhost"
)

# Get counters
$counter = Get-Counter -computername $comp

#Display results
"Basic Performance for system: {0}" -f $comp

# Network interface info
$c= $counter.countersamples | where {$_.path -match "network Interface"}
" Network Bytes Per Second ({0} adapters)" -f $c.count
foreach ($ni in $c){
  $nin = if ($ni.instancename.length -le 34)  {$ni.InstanceName}
         else {$ni.instancename.substring(0,34)}

 "   {0,-35} {1,12:n2} kbps" -f $nin,$($ni.cookedvalue/1kb)
}

# CPU Usage
$c= $counter.countersamples | where {$_.path -match "processor time"}
" CPU Usage           {0,30:n2} %" -f $c.cookedvalue

# Memory
$cb = ($counter.countersamples | where {$_.Path -match "bytes in use"}).cookedvalue
$cf = ($counter.countersamples | where {$_.Path -match "cache"}).cookedvalue
" Committed Bytes     {0,30:n2} mb" -f $cb
" Cache Faults        {0,30:n2} p/s" -f $cf

# Disk
$dt =  ($counter.countersamples | where {$_.Path -match "disk time"}).cookedvalue
$dql = ($counter.countersamples | where {$_.Path -match "queue"}).cookedvalue
" Percent Disk Time     {0,30:p2}" -f $dt
" Disk Queue Length   {0,30:n2}" -f $dql