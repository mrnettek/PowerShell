<#
.SYNOPSIS
    This script demonstrates using an ArrayLIst
.DESCRIPTION
    This script re-implements an MSDN Sample using 
    a System.Collection.Arraylist
.NOTES
    File Name  : Get-Arraylist2.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
	    http://msdn.microsoft.com/en-us/library/system.collections.arraylist.insert.aspx
.EXAMPLE
    Left as an exercise for the reader!
    
#>
$myAL = New-Object system.Collections.ArrayList
$myAL.Insert( 0, "The" )
$myAL.Insert( 1, "fox" )
$myAL.Insert( 2, "jumps" )
$myAL.Insert( 3, "over" )
$myAL.Insert( 4, "the" )
$myAL.Insert( 5, "dog" )

# Create and initializes a new Queue.
$myQueue = New-Object system.Collections.Queue
$myQueue.Enqueue( "quick" )
$myQueue.Enqueue( "brown" )

# Displays the ArrayList and the Queue.
"The ArrayList initially contains the following:"
$myAL
"The Queue initially contains the following:"
$myQueue

# Copy the Queue elements to the ArrayList at index 1.
$myAL.InsertRange( 1, $myQueue )

# Displays the ArrayList.
 "After adding the Queue, the ArrayList now contains:" 
 $myAL
 
 # Search for "dog" and add "lazy" before it.
 $myAL.Insert( $myAL.IndexOf( "dog" ), "lazy" )

# Display the ArrayList.
"After adding `"lazy`", the ArrayList now contains:" 
$myAL

# Add "!!!" at the end.
 $myAL.Insert( $myAL.Count, "!!!" )
 
# Display the ArrayList.
"After adding `"!!!`", the ArrayList now contains:"
$myAL

# Inserting an element beyond Count throws an exception.
 try  {
     $myAL.Insert( $myAL.Count+1, "anystring" )
	  } 
catch {
"Exception: " + $Error[0]
      }