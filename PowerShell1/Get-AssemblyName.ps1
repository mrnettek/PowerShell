<#
.SYNOPSIS
    Gets assembly full name of a loaded assembly        
.DESCRIPTION
    This 
.NOTES
    File Name  : Get-Assemblyname.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Get-AssemblyName.Ps1'
    Full name  = "mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
#>
##
# Start of script
##

# Using Reflection to get information from an Assembly:
$o =[System.Reflection.Assembly]::Load("mscorlib.dll")
$name = $o.GetName()
"Full name  = `"{0}`"" -f $name
# End of script