<#
.SYNOPSIS
    This script removes an an attribute from an XML element.
.DESCRIPTION
    This script creates an XML document, then removes an
    Attribute using the RemoveAttribute method.
.NOTES
    File Name  : Remove-XMLAttribute.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/z267hx58.aspx
.EXAMPLE
    PSH [C:\foo]: .\Remove-XMLAttribute.ps1
    Display the initial XML...
    <book genre="novel" ISBN="1-861001-57-5"><title>Pride And Prejudice</title></book>
    Display the modified XML...
    <book ISBN="1-861001-57-5"><title>Pride And Prejudice</title></book>
#>

# Create and load an XML Document
$Doc = New-Object System.Xml.XmlDocument
$Doc.LoadXml("<book genre='novel' ISBN='1-861001-57-5'>" +
                "<title>Pride And Prejudice</title>" +
                "</book>")
# Set root
$Root = $Doc.DocumentElement

# Display initial XML
"Display the initial XML..."
$Doc.InnerXml

# Remove the genre attribute
$Return = $Root.RemoveAttribute("genre")

# Display result
"Display the modified XML..."
$Doc.InnerXml