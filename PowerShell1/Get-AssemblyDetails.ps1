<#
.SYNOPSIS
    This script demonstrates the Assembly.GetType method.
.DESCRIPTION
    This script creates an int32, then calls into .NET to find 
    the assembly that the int32 class comes from. The assembly
    details are then output. This script is a re-work of an MSDN
    code sample.
.NOTES
    File Name  : Get-AssemblyDetails.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.reflection.assembly.getassembly.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-AssemblyDetails.ps1'
    CodeBase=: file:///C:/Windows/Microsoft.NET/Framework64/v2.0.50727/mscorlib.dll
#>

# Set the Type instance to the target class type.
$Integer1 = New-Object System.Int32
$Type1 = $Integer1.GetType();

# Instantiate an Assembly class to the assembly housing the Integer type.  
$SampleAssembly = [System.Reflection.Assembly]::GetAssembly($Integer1.GetType())

# Gets the location of the assembly using file: protocol.
"CodeBase=: {0}" -f $SampleAssembly.CodeBase