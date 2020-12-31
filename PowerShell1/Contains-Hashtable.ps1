<#
.SYNOPSIS
    Hashtable Contains method sample using PowerShell 
.DESCRIPTION
    This script create and populates a hash table then demonstrates 
	use of contains, containskey and containsvalue methods.
.NOTES
    File Name  : Contains-HashTable.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo> .\Contains-HashTable.ps1
	The Hashtable contains the following values:
    
    Name                           Value
    ----                           -----
    4                              four
    0                              zero
    2                              two
    1                              one
    3                              three

    The key "0" is in the hashtable: True
    The key "5" is in the hashtable: False

    The key "2" is in the hashtable: True
    The key "6" is in the hashtable: False

    The value "three" is in the hash table: True
    The value "nine" is in the hash table: False
#>

##
#  Start of script
##

$myht = @{}
$myht.Add( 0, "zero" );
$myht.Add( 1, "one" );
$myht.Add( 2, "two" );
# or a more powershell way
$myht += @{"3"= "three"}
$myht += @{"4"="four" }

# Display the values of the Hashtable
"The Hashtable contains the following values:"
$myht
""

# use contains method
$myKey = 0;
"The key `"{0}`" is in the hashtable: {1}" -f $myKey, $myHT.Contains( $myKey )
$myKey = 5;
"The key `"{0}`" is in the hashtable: {1}" -f $myKey, $myHT.Contains( $myKey )
""

# Now use ContainsKey
$myKey = 2;
"The key `"{0}`" is in the hashtable: {1}" -f $myKey, $myHT.ContainsKey( $myKey )
$myKey = 6;
"The key `"{0}`" is in the hashtable: {1}" -f $myKey, $myHT.ContainsKey( $myKey )
""

# Searches for a specific value using ContainsValue
$myValue = "three";
"The value `"{0}`" is in the hash table: {1}" -f $myValue, $myHT.ContainsValue( $myValue )
$myValue = "nine";
"The value `"{0}`" is in the hash table: {1}" -f $myValue, $myHT.ContainsValue( $myValue )
# End of script