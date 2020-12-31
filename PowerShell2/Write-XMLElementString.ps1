<#
.SYNOPSIS
    This script uses XMLWriter to write an XML Element
.DESCRIPTION
    This script creates and uses and XML writer to write an 
    XML Element
.NOTES
    File Name  : Write-XxmElementString.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/aex0e7zs.aspx
.EXAMPLE
    PSH [C:\foo]: .\Write-XmlElementString.ps1'
    <orderID>1-456-ab</orderID><orderID>2-36-00a</orderID>
#>
# Create new XMLWriter settings
$settings = new-object System.Xml.XmlWriterSettings
$settings.OmitXmlDeclaration = $true
$settings.ConformanceLevel = 'Fragment'
$settings.CloseOutput = $false;

# Create the XmlWriter object and write some content.
#$strm = new-object system.io.MemoryStream
$writer = [system.xml.XmlWriter]::Create("c:\foo\data.xml", $settings)
$writer.WriteElementString("orderID", "1-456-ab")
$writer.WriteElementString("orderID", "2-36-00a")
$writer.Flush()
$writer.Close()

# Display data
cat c:\foo\data.xml
# End Script
