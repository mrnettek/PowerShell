<#
.SYNOPSIS
    Sorted list sample
.DESCRIPTION
     This script creates then manipulates a sorted list
.NOTES
    File Name  : Get-SortedList.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://pshscripts.blogspot.com/2008/07/get-sortedlistps1.html
.EXAMPLE
    PSH [C:\foo]: .\Get-SortedList.ps1
    $mySL
      Count:    3
      Capacity: 16
      Keys and Values:
            -KEY-   -VALUE-
            First:  Hello
            Second: World
            Third:  !

    $mySL after two additions
      Count:    5
      Capacity: 16
      Keys and Values:
            -KEY-   -VALUE-
            AAAA:   aaaa
            First:  Hello
            Second: World
            Third:  !
            ZZZZ:   zzzz
#>

##
# Start of script
##
 
# Define Helper Function
function PrintKeysAndValues( $myList )  {
"`t-KEY-`t-VALUE-" 
for ( [int] $i = 0; $i -lt $myList.Count; $i++ )  {
    "`t{0}:`t{1}" -F $myList.GetKey($i), $myList.GetByIndex($i)
      }
""
}
 
# Create and initialise a new SortedList object
$mySL = new-object system.collections.SortedList
$mySL.Add("First", "Hello")
$mySL.Add("Second", "World")
$mySL.Add("Third", "!")

# Display the properties and values of the SortedList
"`$mySL" 
"  Count:    {0}" -f $mySL.Count
"  Capacity: {0}" -f $mySL.Capacity
"  Keys and Values:"
PrintKeysAndValues( $mySL )
 
# Add two more and display results
$mysl.add("AAAA",  "aaaa")
$mysl.add("ZZZZ" , "zzzz")
 
# display results
"`$mySL after two additions" 
"  Count:    {0}" -f $mySL.Count
"  Capacity: {0}" -f $mySL.Capacity
"  Keys and Values:"
PrintKeysAndValues( $mySL )
# End of script