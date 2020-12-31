<#
.SYNOPSIS
    This script uses the Speech API to say "Hello World"
.DESCRIPTION
    This script first loads the Speech API, then creates a 
    SpeechSynthesiser object. It uses this object's Speak method
    to speak the time honoured phrase "Hello world."
.NOTES
    File Name  : Say-HelloWorld.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/ms586901.aspx
.EXAMPLE
    Left as an exercise for the reader.
#>
# First load the dll
[System.Reflection.Assembly]::LoadWithPartialName("System.Speech") | out-null

# Create a speech synthesizer object and enumerate voices
$spk = New-Object System.Speech.Synthesis.SpeechSynthesizer

# Now say "Hello world"
$spk.SpeakAsync("Hello world")