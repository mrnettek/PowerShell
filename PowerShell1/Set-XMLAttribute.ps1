<#
.SYNOPSIS
    This script adds an attribute to an XML node
.DESCRIPTION
    This script creates a simple XML document and sets an attribute
    on a node. The script displays the before and after results, and
    is a conversion and extension of the MSDN sample. 
.NOTES
    File Name  : get-autohelp.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to: http://www.pshscripts.blogspot.com
    MSDN Sample posted at: http://msdn.microsoft.com/en-us/library/y1ah1zbw.aspx 
.EXAMPLE
    PSH [C:\foo]: .\Set-XMLAttribute.ps1
    Display the Starting XML...
    <book xmlns:bk="urn:samples" bk:ISBN="1-861001-57-5"><title>Pride And Prejudice</title></book>
    Display the modified XML...
    <book xmlns:bk="urn:samples" bk:ISBN="1-861001-57-5" genre="novel"><title>Pride And Prejudice</title></book>
#>

# Create the XML document and populate
 
$Doc = New-Object System.XML.XmlDocument
$Doc.LoadXml("<book xmlns:bk='urn:samples' bk:ISBN='1-861001-57-5'>" +
"<title>Pride And Prejudice</title>" +
"</book>")
$Root = $doc.DocumentElement
 
# Display the XML
"Display the Starting XML..."
$doc.InnerXml
 
# Add an attribute and display results
$root.SetAttribute("genre", "novel")
"Display the modified XML..."
$doc.InnerXmL