<#
.SYNOPSIS
    Sample of clearing a stack using PowerShell    
.DESCRIPTION
    This script creates a script and shows the impact of clearing the stack
.NOTES
    File Name  : clear-stack.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://pshscripts.blogspot.com/2008/07/clear-stackps1.html
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Collections.Stack\clear-stack.ps1
    Initially,
       Count    : 5
       Values:
    jumped
    fox
    brown
    quick
    The
    After Clear,
       Count    : 0
       Values:

#>

##
# Start of script
##

# Create stack
$stack = new-object system.collections.stack
$Stack.Push( "The" );
$Stack.Push( "quick" );
$Stack.Push( "brown" );
$Stack.Push( "fox" );
$Stack.Push( "jumped" );
 
# Display the count and values of the Stack
"Initially,"
"   Count    : {0}" -f $Stack.Count
"   Values:"
$Stack
 
# Clear the Stack
$Stack.Clear()

# Display the count and values of the Stack
"After Clear,"
"   Count    : {0}" -f $Stack.Count
"   Values:"
$Stack