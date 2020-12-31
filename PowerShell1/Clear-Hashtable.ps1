<#
.SYNOPSIS
    Demonstrates Hashtable's Clear Method 
.DESCRIPTION
    This script creates and populates a hash table then demostrates
	use of the .clear method.
.NOTES
    File Name  : Clear-HashTable.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS C:\foo> .\ClearHashTable.ps1
    Initially,
       Count    : 5
       Values:

    Name                           Value
    ----                           -----
    five                           jumped
    one                            The
    two                            quick
    three                          brown
    four                           fox

    After Clear,
       Count    : 0
       Values:
#>

##
#  Start of Script
##

# Create and populate a hash table
$MyHashTable= @{}
$MyHashTable.Add( "one",   "The"     )
$MyHashTable.Add( "two",   "quick"   )
$MyHashTable.Add( "three", "brown" )

# Add using the PowerShell way: :-)
$MyHashTable += @{"four"="fox"   }
$myHashTable += @{"five"="jumped"}

# Display the count and values of the Hashtable
"Initially," 
"   Count    : {0}" -f $MyHashTable.Count
"   Values:"
$MyHashTable

# Clear the Hashtable.
$MyHashTable.Clear()
""

# Display the count and values of the Hashtable
"After Clear," 
"   Count    : {0}" -f $MyHashTable.Count 
"   Values:"
$MyHashtable
# End of script