<#
.SYNOPSIS
    Shows use of Hash tables with PowerSHell
.DESCRIPTION
    This script creates and populates a Hash Table then displays the values, keys, etc.
.NOTES
    File Name  : Show-HashtableValues.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\show-hashtablevalues.ps1'
    The Hash Table so far

   Name                           Value
   ----                           -----
   bmp                            paint.exe
   rtf                            wordpad.exe
   txt                            notepad.exe
   dib                            paint.exe

   4 Keys in this table as follows:
   1:  bmp
   2:  rtf
   3:  txt
   4:  dib

   4 Values in this table as follows:
   1:  paint.exe
   2:  wordpad.exe
   3:  notepad.exe
   4:  paint.exe
#>

##
# Start of Script
##


# create new hash table
$openWith = new-object system.collections.hashtable

# Add some elements to the hash table. 
$openWith.Add("txt", "notepad.exe")
$openWith.Add("dib", "paint.exe")
# Add in a powershell way!
$openwith += @{"bmp"="paint.exe"}
# or
$wordpad  =    "wordpad.exe"
$openwith += @{"rtf"=$wordpad}

# Display the Hash table
"The Hash Table so far"
$openwith
""

# To get the keys alone, use the Keys property
$i=0
"{0} Keys in this table as follows:" -f $openwith.keys.count
$openwith.keys | %{"{0}:  {1}" -f ++$i, $_}
""

# To get the values alone, use the Values property
$i=0
"{0} Values in this table as follows:" -f $openwith.values.count
$openwith.values | %{"{0}:  {1}" -f ++$i, $_}
""
# End of Script