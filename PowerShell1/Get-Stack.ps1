<#
.SYNOPSIS
    Demonstrates basic functions of a stack
.DESCRIPTION
    This script creates a stack, pushes three
	objects onto the stack, then displays the stack
.NOTES
    File Name  : Get-Stack.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
	Tags       : system.collections.stack,push
.LINK
    http://pshscripts.blogspot.com/2008/07/get-stackps1.html
.EXAMPLE
    PSH [C:\foo]: .\get-stack.ps1'
    myStack
    Count:    3
    Values:
    !
    World
    Hello
#>

##
#  Start of script
##

$myStack = new-object  System.Collections.Stack 
$myStack.Push("Hello")
$myStack.Push("World")
$myStack.Push("!")
 
# Display the properties and values of the Stack
"myStack"
"Count:    {0}" -f $myStack.Count
"Values:"
$mystack
# End Script