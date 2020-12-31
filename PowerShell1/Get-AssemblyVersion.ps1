<#
.SYNOPSIS
    Gets the version number for an assembly
.DESCRIPTION
    
.NOTES
    File Name  : Get-AssemblyVersion.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Reflection\Get-AssemblyVersion.ps1'
    Assembly: System.Speech has version number of: 3.0.0.0    
#>

## 
# Start of script
##

# Define the assembly we want to load - a random reference assembly from SDK 3.0
$Pshfile = "C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\v3.0\system.speech.dll"

# Now load the assembly
$Myasm = [System.Reflection.Assembly]::Loadfile($Pshfile)

# Get name, version and display the results
$Aname = $Myasm.GetName()
$Aver =  $Aname.version

# Display results
"Assembly: {0} has version number of: {1}" -f $Aname.name, $aver
# End of script