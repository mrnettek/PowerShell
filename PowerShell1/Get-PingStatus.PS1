<# 
.SYNOPSIS 
    Demonstrates use of the Win32_PingStatus WMI class   
.DESCRIPTION 
    This script is a community content MSDN sample,using PowerShell 
.NOTES 
    File Name  : Get-PingStatus
    Author     : Thomas Lee - tfl@psp.co.uk 
    Requires   : PowerShell V2
.LINK 
    Sample posted to: 
        http://pshscripts.blogspot.com/2009/03/get-pingstatusps1.html
    Original MSDN sample at: 
        http://msdn.microsoft.com/en-us/library/system.net.httpversion.aspx 
.PARAMETER Comp
    The computer you want to ping - should be resolvable by DNS
.EXAMPLE 
    PSH [C:\foo]:  .\Get-PingStaus.ps1 blogger.com
    Computer to ping:       blogger.com
	Computer responded in:  127ms
.EXAMPLE
    PSH [C:\foo]: "blogger.com", "Localhost" | . 'C:\foo\to post\get-pingstatus.PS1'
    Computer to ping:       blogger.com
    Computer responded in:  127ms
    Computer to ping:       Localhost
    Computer responded in:  0ms
.EXAMPLE
    PSH [C:\foo]:  .\Get-PingStaus.ps1 
    Computer to ping:       localhost
    Computer responded in:  0ms
#> 

[Cmdletbinding()]
param ( 
[Parameter(Position=0,mandatory=$false,ValueFromPipeline=$true)]
[string] $comp = "localhost")

### 
# Start of Script 
### 

Process {
# Display intput
"Computer to ping:       $comp"

# Now ping the system
$ping = get-wmiobject -Query "select * from win32_pingstatus where Address='$comp'"

# Display Results
if ($ping.statuscode -eq 0) {
"Computer responded in:  {0}ms" -f $ping.responsetime
}
else {
"Computer did not respond"
}
}
