<#
.SYNOPSIS
    This script opens a word document using PowerShell
.DESCRIPTION
    This script re-implments a simple MSDN script to open
    a word document using VBA. IT Pros using PowerShell
    might also make use of to create rich documents as
    output from a script.
.NOTES
    File Name  : Open-WordDocument.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/bb148369%28office.12%29.aspx
.EXAMPLE
    Running this sample opens the file c:\foo\doc1.docx in Word. The 
    COM object referring to the document is returned for later use.
    
#>

# Create Word Object
$wrd = new-object -com word.application

# Make Word Visible
$wrd.visible = $true

# Open a document 
$doc = $wrd.documents.open("C:\foo\doc1.docx")