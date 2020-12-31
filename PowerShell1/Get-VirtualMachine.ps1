<#
.SYNOPSIS
    This script gets the list of Virtual Machines on a Hyper-V Host
.DESCRIPTION
    This script uses WMI to get the VMs defined on a Hyper-V host
    then displays them.
.NOTES
    File Name  : Get-VirtualMachine.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/09/get-virtualmachineps1.html
    MSDN sample posted to
	    http://msdn.microsoft.com/en-us/library/cc136822%28VS.85%29.aspx
.EXAMPLE
    PSH [c:\foo\: Get-VirtualMachine 
	5 Virtual Machines on: COOKHAM2

    PSMC-DC1
    PSMC-EXCH1
    PSMC-SQL
    PSMC-SRV1
    PSMC-SRV2
#>

# Get list of VMs from WMI
$vmbase = get-wmiobject Msvm_ComputerSystem -namespace root\virtualization -ComputerName Cookham2

# Get hosting computer System Name

$HostName = $vmbase | ? {$_.Caption -eq "Hosting Computer System"} | select name

# Print results
"{0} Virtual Machines on: {1}" -f $($vmbase.count-1),$Hostname.name
$vmbase | where {$_.Caption -ne "Hosting Computer System"} | sort elementname | ft elementname -HideTableHeaders