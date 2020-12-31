 <#
.SYNOPSIS
    Demonstratrs adding items to a hashtable  
.DESCRIPTION
    This script creates a HashTable, then adds some items to it, and 
	finally prints out the resulting hash table.
.NOTES
    File Name  : Add-Hashtable.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo> .\Add-Hashtable.ps1
    	 The Hashtable contains the following:

    Name                           Value
    ----                           -----
    four                           fox
    two                            quick
    three                          brown
    one                            The
#>

##
#  Start of script
##

# Create a hash table
$MyHashTable = @{}

# Add to it using .NET
$MyHashTable.Add( "one", "The" )
$MyHashTable.Add( "two", "quick")

# Add the PowerShell Way:
$MyHashTable += @{"three" = "brown"}
$MyHashTable += @{"four"  = "fox"  }

# Display the Hashtable.
" The Hashtable contains the following:" 
$MyHashTable
