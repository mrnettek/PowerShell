<#
.SYNOPSIS
    Demonstrates using a queue object
.DESCRIPTION
    This script creates a queue, then adds some items to it, print
	out the contents then synchs it.
.NOTES
    File Name  : show-queueproperties.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
	Tags       : showqueue,enqueue,synchronize,system.collections.queue

.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo> .\show-queueproperties.ps1
    Creating and populating $myq object with...
    3 entries in the queue as follows:
    entry 0:  Hello
    entry 1:  World
    entry 2:  Jerry Garcia Rocks!!

    Report on $myq
    $myq is synchronised?  :False

    Synchronising $myq to $sq
    $sq  is synchronised?  :True	
#>

##
#  Start of script
##

# Create new queue object
$myq = new-object System.Collections.Queue
$myq.Enqueue("Hello")
$myq.Enqueue("World")
# or a more powershell way
$myq += "Jerry Garcia Rocks!!"
 
# Show use of the properties of the Queue
# First use count property
"Creating and populating `$myq object with..."
$i=0
"`{0} entries in the queue as follows:" -f $myq.Count
$myq | % {"entry {0}:  {1}" -f $i++,$_ }
""

# Now check synchronisation
"Report on `$myq"
"`$myq is synchronised?  :{0}" -f $myq.IsSynchronized
""

# Synch the queue
"Synchronising `$myq to `$sq"
$sq = [system.collections.queue]::synchronized($myq)

# report again
"`$sq  is synchronised?  :{0}" -f $sq.IsSynchronized
# End Script