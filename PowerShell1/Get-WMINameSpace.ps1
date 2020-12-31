<#
.SYNOPSIS
    This script displays all the namespaces withing a Windows system
.DESCRIPTION
    This script uses Get-WMIObject to retreive the names of all the namespaces
    within a system.
.NOTES
    File Name  : Get-WMINameSpace.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\WMI\Get-WMINameSpace.ps1'
    37 Namespaces on: Cookham8

    Namespace
    ---------
    ROOT
    ROOT\aspnet
    ROOT\CIMV2
    ROOT\CIMV2\Security
    ... {Remainder of list snipped to save space on this page}
#>

# Set computer name
$comp = "."

# Get the name spaces on the local computer, and the local computer name
$Namespace = get-wmiobject __namespace -namespace 'root' -list -recurse -computer $comp 
$hotsname = hostname

# Display number of and names of the namespaces
"{0} Namespaces on: {1}" -f $namespace.count, $hostname
$NameSpace| sort __namespace  | Format-Table @{Expression = "__Namespace"; Label = "Namespace"}