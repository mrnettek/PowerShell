<#
.SYNOPSIS
    This script uses XMLWriter to write XML
.DESCRIPTION
    This script creates and XML writer and writes some basic
    XML.
.NOTES
    File Name  : Write-XML.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	   http://msdn.microsoft.com/en-us/library/system.xml.xmlwritersettings.aspx
.EXAMPLE
    PSH [C:\foo]: .\Write-XML.ps1'
    <?xml version="1.0" encoding="IBM437"?>
    <order
      orderID="367A54"
      date="2001-05-03">
      <price>19.95</price>
    </order>PSH [C:\foo]:
#>
# Create a new writer settings object
# And set settings
$settings = New-Object system.Xml.XmlWriterSettings
$settings.Indent = $true
$settings.OmitXmlDeclaration = $false
$settings.NewLineOnAttributes = $true

# Create a new Writer
$writer = [system.xml.XmlWriter]::Create([system.console]::Out, $settings)

#Write some XML
$writer.WriteStartElement("order")
$writer.WriteAttributeString("orderID", "367A54")
$writer.WriteAttributeString("date", "2001-05-03")
$writer.WriteElementString("price", "19.95")
$writer.WriteEndElement()
# Flush the writer (and close the file)    
$writer.Flush()
$writer.Close()