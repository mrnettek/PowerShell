<#
.SYNOPSIS
    This script displays the virtual Memory assigned to Hyper-V
    VMs on a given host.
.DESCRIPTION
    This script uses The Hyper-V module from Codeplex to first
    get all the VMs on a given server, then display the memory 
    allocated to each VM.
.NOTES
    File Name  : get-VMMemory.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
                 and HyperV module from Codeplex
                 http://pshyperv.codeplex.com
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\Foo]: c:\foo\get-VMMemory.ps1 Foo21
    On Server Foo21 there are 2 VMs as follows:
    Virtual Machine                       Memory
    SQL-2008-R2-CTP                          768
    Server-2008-R2                           768
.EXAMPLE
    PSH [C:\Foo]: "Server2" | c:\foo\get-VMMemory.ps1 Foo21
    On Server Server2 there are 3 VMs as follows:
    Virtual Machine                       Memory
    Server-2008-R2-1                         768
    Server-2008-R2-2                         768
    Server-2008-R2-3                         768
#>

# Parameter is the machine to look at
param (
[Parameter(Position=0, Mandatory=$false,ValueFromPipeLine=$true)] 
[string] $computer = "MyServer"
)
##
# Start of script
##

# Import the module
Import-Module HyperV

# Get all the VMs on the target system
$vms = get-vm -server $computer

# Now loop through the VMs and display memory allocated
"On Server {0} there are {1} VMs as follows:" -f $computer,$vms.count
"{0,-30}    {1,10}" -f "Virtual Machine", "Memory"
foreach ($vm in $vms) {
$mem = get-vmmemory $vm
"{0,-30}    {1,10}" -f $vm.elementname,$mem.virtualquantity
} 
# End of script