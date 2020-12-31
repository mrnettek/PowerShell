<#
.SYNOPSIS
    This script demonstrates the confirmance level enum.
.DESCRIPTION
    This script displays the values form the conformancelevel enum
    and checks it against a value.
.NOTES
    File Name  : Get-ConformanceLevelEnum.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/h2344bs2(VS.85).aspx
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.XML\Get-ConformanceLevelEnum.ps1'
    System.XML.ConformanceLevel enum has 3 possible values
    Value 1: Auto
    Value 2: Fragment
    Value 3: Document
    
    $ToCheck1 is NOT document
    $ToCheck2 is Document
#>

##
# Start of script
##
# Demonstrates the ConformanceLevel enum
# Thomas Lee - tfl@psp.co.uk
# Enumerate the enum
$enums=[enum]::GetValues([System.Xml.ConformanceLevel])

# Display
"System.XML.ConformanceLevel enum has {0} possible values" -f $enums.count
$i=1
$enums| %{"Value {0}: {1}" -f $i,$_.tostring();$i++}
""
# Checking against a an enum value 
$ToCheck1 = "somethingelse"
$Tocheck2 = "document"
if ($ToCheck1 -eq  [System.XML.ConformanceLevel]::Document) {
  "`$ToCheck1 is document"}
else {
  "`$ToCheck1 is NOT document"
}
  
if ($ToCheck2 -eq  [System.XML.ConformanceLevel]::Document) {
 "`$ToCheck2 is Document"}
else {
 "`$ToCheck2 is NOT document"
} 
#End of Script