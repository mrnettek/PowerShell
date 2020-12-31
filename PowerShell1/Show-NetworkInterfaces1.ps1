<#
.SYNOPSIS
    This script displays the NICs in a system and their physical address.
.DESCRIPTION
    This script is a MSDN Sample recoded in PowerShell. The script first
    gets all the interfaces on the system, then loops through them displaying
    more information about them to the console.Note the use of Console.Write
    in the loop at the end. Not quite sure a better PowerShell equivalent other than
    creating a string with all the bytes, then displaying that string.
.NOTES
    File Name  : Show-NetworkInterfaces1.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/system.net.networkinformation.physicaladdress.aspx   
.EXAMPLE
    PSH[c:\foo]> .\Show-Networkinterfaces1.ps1
Interface information for Cookham8.cookham.net     
  Number of interfaces .................... : 2
Broadcom NetXtreme 57xx Gigabit Controller
==========================================
  Interface type .......................... : Ethernet
  Physical address ........................ : 00-1E-4F-95-5C-C4 

Microsoft ISATAP Adapter
========================
  Interface type .......................... : Tunnel
  Physical address ........................ : 00-00-00-00-00-00-00-E0 
    
#>
    
# Get computer IP global properties
$ComputerProperties = [System.Net.NetworkInformation.IpGlobalProperties]::GetIPGlobalProperties()

# Get the nics in this system
$nics = [System.Net.NetworkInformation.NetworkInterface]::GetAllNetworkInterfaces()

# Show information header
"Interface information for {0}.{1}     " -f $ComputerProperties.HostName, $ComputerProperties.DomainName
 
# Iterate through the NIcs ans outout per nic info
# First, check if interfaces are found
 if (!$nics -OR $nics.Length -LT 1)
    {
        "  No network interfaces found."
        return
    }

# Here print out number of interfaces and interface details
[System.Console]::WriteLine("  Number of interfaces .................... : {0}" -f $nics.Length)
Foreach ($adapter in $nics)
    {
        $properties = $adapter.GetIPProperties();   
        " ";""
        "{0}" -F $adapter.Description
        "=" * $adapter.Description.Length
        "  Interface type .......................... : {0}" -F $adapter.NetworkInterfaceType
        [System.Console]::Write("  Physical address ........................ : ")
        $address = $adapter.GetPhysicalAddress();
        $bytes = $address.GetAddressBytes()
        for($i = 0; $i -lt $bytes.Length; $i++)
        {
            # Display the physical address in hexadecimal.
            [system.Console]::Write("{0}" -f $bytes[$i].ToString("X2"))
            # Insert a hyphen after each byte, unless we are at the end of the 
            # address.
            if ($i -NE $bytes.Length -1)
            {
                 [System.Console]::Write("-")
            }
        }
        [System.Console]::WriteLine()
    }
