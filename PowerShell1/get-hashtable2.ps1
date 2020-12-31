<#
.SYNOPSIS
    A rich example of using hash tables with PowerShell  
.DESCRIPTION
    This script creates, populates a hash table then
	operates on the hash table
.NOTES
    File Name  : Get-HashTable2.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
    http://msdn.microsoft.com/en-gb/netframework/aa663309.aspx
.EXAMPLE
    PS c:\foo> Get-HashTable2.ps1
    The Hash Table so far

    Name                           Value
    ----                           -----
    bmp                            paint.exe
    rtf                            wordpad.exe
    txt                            notepad.exe
    dib                            paint.exe

    Trying to add an entry with an existing key
   ***
   *** An element with Key = "txt" already exists.
   ***
   Continuing

    for key = "rtf", value = wordpad.exe.
    for key = "rtf", value = winword.exe.

    The Hash Table so far
    doc                            winword.exe
    bmp                            paint.exe
    rtf                            winword.exe
    txt                            notepad.exe
    dib                            paint.exe

    Value added for key = "ht": hypertrm.exe

    6 elements in the hash table as follows:
    doc                            winword.exe
    bmp                            paint.exe
    ht                             hypertrm.exe
    rtf                            winword.exe
    txt                            notepad.exe
    dib                            paint.exe

    Value Entries:
    Value = winword.exe
    Value = paint.exe
    Value = hypertrm.exe
    Value = winword.exe
    Value = notepad.exe
    Value = paint.exe

    Key Entries
    Key = doc
    Key = bmp
    Key = ht
    Key = rtf
    Key = txt
    Key = dib
    
    
    Removing("doc")
    Key "doc" is no longer found.
#>

###
#  Start of script
##

# create new hash table
$openWith = @{}
 
# Add some elements to the hash table. There are no 
# duplicate keys, but some of the values are duplicates.
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
 
# The Add method throws an exception if the new key is 
# already in the hash table.
  
#first catch exception
 trap [Exception] {
    "***" 
    write-host "*** An element with Key = `"txt`" already exists."
    "***"
    continue
 }
 
# now the offending line.
"";"Trying to add an entry with an existing key"
$openWith.Add("txt", "winword.exe");
"Continuing";""
 
# The Item property is the default property, so you 
# can omit its name when accessing elements
# A non-existing key comes up empty
"For key = `"rtf`", value = {0}." -f $openWith["rtf"]
 
# The default Item property can be used to change the value
# associated with a key.
# add an entry for RTF 
 $openWith["rtf"] = "winword.exe";
 "For key = `"rtf`", value = {0}." -f $openWith["rtf"]
    
# If a key does not exist, setting the default Item property
# for that key adds a new key/value pair.
$openWith["doc"] = "winword.exe"
 
# Note Progress with this hashtable
"";"The Hash Table so far"
$openwith
""
 
# The ContainsKey method can be used to test keys before inserting them.
# tesst the "ht" key before adding it into the hashtable
if (!$openWith.ContainsKey("ht")) {
            $openWith.Add("ht", "hypertrm.exe")
            "Value added for key = `"ht`": {0}" -f $openWith["ht"]
}
 

# When you use foreach to enumerate hash table elements,
# the elements are retrieved as KeyValuePair objects.
""
 
"{0} elements in the hash table as follows:" -f $openwith.count 
$openwith
 
# To get the values alone, use the Values property.
$valueColl = $openWith.Values
 
# To get the values alone, use the Values property.
$valueColl = $openWith.Values
 
# The elements of the ValueCollection are strongly typed
#with the type that was specified for hash table values.
"";"Value Entries:"
foreach( $s in $valueColl ) {
            "Value = {0}" -f $s
}
 
# To get the keys alone, use the Keys property.
$keyColl = $openWith.Keys
 
# The elements of the KeyCollection are strongly typed
# with the type that was specified for hash table keys.
"";"Key Entries"
foreach( $s in $keyColl ){
        "Key = {0}" -f $s
}
 
# Use the Remove method to remove a key/value pair.
"`nRemoving(`"doc`")"
$openWith.Remove("doc")
# See if it's there
if (!$openWith.ContainsKey("doc")) {
           "Key `"doc`" is no longer found."
 }
# End of script