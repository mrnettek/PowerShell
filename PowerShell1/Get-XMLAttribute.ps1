<#
.SYNOPSIS
    This script retrieves an attribute from an XML Element 
.DESCRIPTION
    This script first creates an in-memory XML document, then used the 
    HasAttribute and GetAttribute to retrieve an attribute.
.NOTES
    File Name  : Get-XMLAttribute.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/06/get-xmlattributeps1.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/efsc3w6k.aspx
        http://msdn.microsoft.com/en-us/library/acwfyhc7.aspx		
.EXAMPLE
    PSH [C:\foo]: .\Get-XMLAttribute.ps1
    Elemnt has genre: novel
#>
# Create XML document in memory
$doc = new-object System.Xml.XmlDocument
$doc.LoadXml("<book genre='novel' ISBN='1-861001-57-5'>" +
                "<title>Pride And Prejudice</title>" +
                "</book>");
# Set root
$root = $doc.DocumentElement;

# Check to see if the element has a genre attribute
# Then display it
if ($root.HasAttribute("genre")){
      $genre = $root.GetAttribute("genre");
      "Elemnt has genre: {0}" -f $genre
   }