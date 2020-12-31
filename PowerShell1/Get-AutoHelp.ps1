<#
.SYNOPSIS
    A summary of what this script does
    In this case, this script documents the auto-help text in PSH CTP 3
	Appears in all basic, -detailed, -full, -examples
.DESCRIPTION
    A more in depth description of the script
	Should give script developer more things to talk about
	Hopefully this can help the community too
	Becomes: "DETAILED DESCRIPTION"
	Appears in basic, -full and -detailed
.NOTES
    Additional Notes, eg
	File Name  : get-autohelp.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Appears in -full 
.LINK
    A hyper link, eg
    http://www.pshscripts.blogspot.com
	Becomes: "RELATED LINKS" 
    Appears in basic and -Full
.EXAMPLE
    A first example - just text documentation
	Appears in -detailed and -full
.EXAMPLE
    And second example - more text documentation
	Appears in -detailed and -full
.INPUTTYPE
   Documentary text, eg:
   Input type  Universal.SolarSystem.Universe.SOL.Earth.CommonSense
   Appears in -full
.RETURNVALUE
   Documentary Text, eg:
   Output type  Universal.Wisdom
   Appears in -full
.COMPONENT
   Not sure how to specify or use
   Does not appear in basic, -full, or -detailed
   Should appear in -component
.ROLE 
   Not sure How to specify or use
   Does not appear in basic, -full, or -detailed
   Should appear with -role
.FUNCTIONALITY
   Not sure How to specify or use
   Does not appear in basic, -full, or -detailed
   Should appear with -fuctionality
.PARAMETER foo
   The .Parameter area in the script is used to derive the contents of the PARAMETERS in Get-Help output which 
   documents the parameters in the param block. The section takes a value (in this case foo,
   the name of the first actual parameter), and only appears if there is parameter of that name in the
   params block. Having a section for a parameter that does not exist generate no extra output of this section
   Appears in -det, -full (with more info than in -det) and -Parameter (need to specify the parameter name)
.PARAMETER bar
   Example of a parameter definition for a parameter that does not exist.
   Does not appear.
#>

# Note above section does not contain entries for NAME, SYNTAX and REMARKS sections of in get-help output
# These sections appear as follows:
# NAME - generated from the name passed to get-help. 
# SYNTAX - generated from param block details.
# REMARKS - generated based on script name (e.g. what's shown in NAME) inserted into some static text.
#
# Not sure how to generate/document -component, -role, -functionality
# Not sure how to generate/use  -category

param (
[Parameter(ParameterSetName='Wisdom')]
[int64] $foo=42
)
 $foo=42
 "The meaning of life is $foo!"