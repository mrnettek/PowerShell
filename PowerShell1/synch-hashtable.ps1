<#
.SYNOPSIS
    Demonstrates Hashtable IsSynchronized 
.DESCRIPTION
    This script creates and populates a hash table, then 
	checks on and displays sync status.
.NOTES
    File Name  : Sync-HashTable.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo> Sync-HashTable.ps1
    $myht is synchronised      : False
    $mySyncdht is synchronised : True
#>

##
#  Start of script
##

# Create and initialise a new Hashtable
$myht = new-object system.collections.hashtable
$myht.Add( 0, "zero")
$myht.Add( 1, "one")
$myht.Add( 2, "two")
$myht.Add( 3, "three")
# or
$myht += @{"4"="four"}

# Create a synchronized wrapper around the Hashtable.
$mysyncdht = [system.collections.Hashtable]::Synchronized( $myht)

# Display the sychronization status of both Hashtables
"`$myht is synchronised      : {0}" -f $myht.IsSynchronized
"`$mySyncdht is synchronised : {0}" -f $mysyncdht.IsSynchronized
# End of script