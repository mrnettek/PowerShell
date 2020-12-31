<#
.SYNOPSIS
    This script clones an XML element.
.DESCRIPTION
    This script creates an XML document, then creates two
    clone elements.
.NOTES
    File Name  : Clone-XMLNode.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.xml.xmlelement.clonenode.aspx
.EXAMPLE
	PSH [C:\foo]: .\CloneXMLNode.ps1
    <book genre="novel" ISBN="1-861001-57-5">
      <title>Pride And Prejudice
	  <misc publisher="WorldWide Publishing">hardcover</misc>
	  <misc publisher="WorldWide Publishing">hardcover</misc>
	  </title>
</book>
#>
	
$Doc = New-Object System.Xml.XmlDocument
$Doc.LoadXml("<book genre='novel' ISBN='1-861001-57-5'>" +
                "<title>Pride And Prejudice</title>" +
             "</book>"			 
			 )
			 
# Create an element
$elem = $doc.CreateElement("misc");
$elem.InnerText = "hardcover";
$elem.SetAttribute("publisher", "WorldWide Publishing");

 # Clone the element so we can add one to each of the book nodes.
$elem2 = $elem.CloneNode($true);

# Add the new elements.
$result = $doc.DocumentElement.FirstChild.AppendChild($elem);
$result = $doc.DocumentElement.LastChild.AppendChild($elem2);


# Display the Modified XML..."
$doc.innerxml | format-xml
