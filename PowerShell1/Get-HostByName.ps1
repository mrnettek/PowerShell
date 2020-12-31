<#
.SYNOPSIS
    This script gets and displays basic DNS Information about a host.
.DESCRIPTION
    This script just gets and displays host details returnd by GetHostByName.
.NOTES
    File Name  : Get-HostAddress.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
	    http://msdn.microsoft.com/en-us/library/system.net.dns.aspx
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Net.DNS\Get-HostByName.ps1

    HostName    : contoso.com
    Aliases     : {www.contoso.com}
    AddressList : {207.46.197.32, 207.46.232.182}
#>
$hostInfo = [system.net.Dns]::GetHostByName("www.contoso.com");
$hostinfo | fl * -force