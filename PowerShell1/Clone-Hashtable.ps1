<#
.SYNOPSIS
    Demonstrates the use of the .clone method with hash tables    
.DESCRIPTION
    This script creates and populates a hash table, then demostrates
	the use of the .clone() method.
.NOTES
    File Name  : Clone-HashTable.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS C:\foo> .\Clone-HashTable.ps1
	There are 4 in the $openwith hash table as follows

    Name                           Value
    ----                           -----
    bmp                            paint.exe
    rtf                            wordpad.exe
    txt                            notepad.exe
    dib                            paint.exe

    There are 4 in the $newtable hash table as follows
    bmp                            paint.exe
    rtf                            wordpad.exe
    txt                            notepad.exe
    dib                            paint.exe
#>

##
# start of script
##

# create new hash table
$openWith = @{}

# Add some elements to the hash table. 
$openWith.Add("txt", "notepad.exe")
$openWith.Add("dib", "paint.exe")
# Add in a powershell way!
$openwith += @{"bmp"="paint.exe"}
# or
$wordpad  =    "wordpad.exe"
$openwith += @{"rtf"=$wordpad}

# display hash table
"There are {0} in the `$openwith hash table as follows:" -f $openwith.count
$openwith
""

# now clone the table
$newtable = $openwith.clone()

# display new hash table
"There are {0} in the `$newtable hash table as follows:" -f $newtable.count
$newtable
# End of script