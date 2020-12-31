<#
.SYNOPSIS
    Sample using Hashtables    
.DESCRIPTION
    This script create, populates and displays a hash table
.NOTES
    File Name  : Get-HashTable.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS C:\foo> Get-HashTable.ps1
    The Hashtable contains the following:

    Name                           Value
   ----                           -----
   four                           fox
   two                            quick
   three                          brown
   one                            The
#>

$myht = new-object system.collections.hashtable
$myht.Add( "one", "The" )
$myht.Add( "two", "quick" )
# or doing it the PowerShell way
$myht += @{"three" = "brown" }
$myht += @{"four" = "fox"}

# Display the Hashtable.
"The Hashtable contains the following:"
$myht