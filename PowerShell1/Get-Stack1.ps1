<#
.SYNOPSIS
    MSDN sample showing push and other stack processing using PowerShell   
.DESCRIPTION
    This script creates a script then performs stack operations.    
.NOTES
    File Name  : get-Stack1.p1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\get-stack1.ps1'
    Stack at start:
    fox
    quick
    The

    (Pop)           fox
    Stack value after Pop:
    brown
    quick
    The

    (Pop)           brown
    Stack values after 2nd pop:
    quick
    The

    (Peek)          quick
    Stack values after a peek:
    quick
    The
#>

##
# start of script
###

# Create and initialise a new stack object
$mystack = new-object system.collections.stack
$myStack.Push( "The" )
$myStack.Push( "quick" )
$myStack.Push( "brown" )
$myStack.Push( "fox" )

# Display the Stack
"Stack at start:"
$myStack
""# Pop an element from the Stack.
"(Pop)`t`t{0}" -f $myStack.Pop()
"Stack value after Pop:"
$myStack
""

# Pop another element from the Stack
"(Pop)`t`t{0}" -f $myStack.Pop()

# Display the Stack after 2nd pop
"Stack values after 2nd pop:" 
$myStack
""

# Peek at the front
"(Peek)`t`t{0}" -f $myStack.peek()

# Display the Stack after the peek
"Stack values after a peek:" 
$myStack