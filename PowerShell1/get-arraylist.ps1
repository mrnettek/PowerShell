<#
.SYNOPSIS
    This script demonstrates the use of the Systems.Collections.Arraylist class
.DESCRIPTION
    This script is a re-write of an MSDN sample script
.NOTES
    File Name  : get-arraylist.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/09/get-arraylistps1.html
    MSDN sample posted tot:
	    http://msdn.microsoft.com/en-us/library/system.collections.arraylist.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-ArrayList.ps1
    0
    1
    2
    myAL
    Count       : 3
    Capacity    : 4
    Fixed Len?  : False
    Read only?  : False
    Values   :
    Hello
    World
    !
#>

# Creates and initializes a new ArrayList.
$myAL = New-Object System.Collections.ArrayList

# Add three values
$myAL.Add("Hello")
$myAL.Add("World")
$myAL.Add("!")

# Display the properties and values of the ArrayList.
"myAL"
"Count       : {0}" -f $myAL.Count
"Capacity    : {0}" -f $myAL.Capacity
"Fixed Len?  : {0}" -f $myAL.IsFixedSize
"Read only?  : {0}" -f $myAL.IsReadOnly
"Values   :"
$myAL