<#
.SYNOPSIS
    Shows details of a hash table  
.DESCRIPTION
    This script creates, populates then displays a hash table. It then
	displays table properties, keys, values and does a synchroot.
.NOTES
    File Name  : Show-HashTableProperties.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo> .\Show-HashTableProperties.ps1
	There are 4 in the $openwith hash table as follows:

	Name                           Value
	----                           -----
	bmp                            paint.exe
	rtf                            wordpad.exe
	txt                            notepad.exe
	dib                            paint.exe

	Count of items in the hashtable  : 4
	Is hashtable fixed size?         : False
	Is hashtable read-only?          : False
	Is hashtabale synchronised?      : False
	
	Keys in hashtable:
	bmp
	rtf
	txt
	dib
	
	Values in hashtable
	paint.exe
	wordpad.exe
	notepad.exe
	paint.exe

    $sr = System.Object
	
#>

##
# Start of Script
##

# Create new hash table
$openWith = @{}

# Add some elements to the hash table. 
$openWith.Add("txt", "notepad.exe")
$openWith.Add("dib", "paint.exe")
# Add in a powershell way!
$openwith += @{"bmp"="paint.exe"}
# or
$wordpad  =    "wordpad.exe"
$openwith += @{"rtf"=$wordpad}

# Display hash table
"There are {0} in the `$openwith hash table as follows:" -f $openwith.count
$openwith
""

# Display Properties
"Count of items in the hashtable  : {0}"  -f $openwith.Count
"Is hashtable fixed size?         : {0}"  -f $openwith.IsFixedSize
"Is hashtable read-only?          : {0}"  -f $openwith.IsReadonly
"Is hashtabale synchronised?      : {0}"  -f $openwith.IsSynchronized
"";"Keys in hashtable:"
$openwith.keys
"";"Values in hashtable"
$openwith.values
""
# finally get syncroot (not much there!)
$sr = $openwith.syncroot
"`$sr = {0}" -f $sr