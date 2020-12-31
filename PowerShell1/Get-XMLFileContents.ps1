<#
.SYNOPSIS
    This script reads a simple XML file and prints the results
.DESCRIPTION
    This script is a re-write of an XML C# MSDN Sample.
.NOTES
    File Name  : get-xmlfilecontents.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
	Books3.xml = 
	  <book>
      <title>C# Introduction</title>
      <price>20</price>
      </book>
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/t9bfea29.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-XMLFileContents.PS1
    The content of the title element: C# Introduction
    The content of the price element: 20

#>

##
# Start of Script
##

# Create XML Reader
$reader = [system.Xml.XmlReader]::Create("C:\foo\book3.xml")

# Parse the XML document.  ReadString is used to 
# read the text content of the elements.
$result=$reader.Read()
 
# Read/Display title
$reader.ReadStartElement("book")
$reader.ReadStartElement("title")   
"The content of the title element: {0}" -f $reader.ReadString()
$reader.ReadEndElement()
 
# Read and display price
$reader.ReadStartElement("price")
"The content of the price element: {0}" -f $reader.ReadString()
$reader.ReadEndElement()
$reader.ReadEndElement()
# End of Script