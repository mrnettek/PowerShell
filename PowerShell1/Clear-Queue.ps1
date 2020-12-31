<#
.SYNOPSIS
    Demonstrates a .NET Queue object
.DESCRIPTION
    This script creates a queue, adds some items to it, and 
	displays the queue. Finally, the clear method is called and results
	displayed.
.NOTES
    File Name  : clear-queue.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
	Tags       : system.collections.queue, enque, powershell, scripts
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo> .\clear-queue.ps1
	
	$myq object
    3 entries in the queue as follow:
    entry 0:  Hello
    entry 1:  World
    entry 2:  !

    $myq object after the clear:
    0 entries in the queue as follow
    queue is empty	
#>

##
#  Start of script
##

# Create new queue object
$myq = new-object System.Collections.Queue
$myq.Enqueue("Hello")
$myq.Enqueue("World")
$myq.Enqueue("!")
 
# Display the properties and values of the Queue
"`$myq object"
$i=0
"`{0} entries in the queue as follow:" -f $myq.Count
$myq | % {"entry {0}:  {1}" -f $i++,$_ }
""

# Now clear the queue
$myq.clear()

#show resutls
"`$myq object after the clear:"
$i=0
"`{0} entries in the queue as follow" -f $myq.Count
if ($myque.count -gt 0)
  {$myq | % {"entry {0}:  {1}" -f $i++,$_ }}
else
  {"queue is empty"}
# End of Script