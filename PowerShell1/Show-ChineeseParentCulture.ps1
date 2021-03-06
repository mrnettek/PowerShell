<#
.SYNOPSIS
    This script displays the parent culture of each 
    specific culture using the Chinese language.
.DESCRIPTION
    This script looks at each Chineese culture and displays
    the culture name and the parent. 
.NOTES
    File Name  : Show-ChineeseParentCulture.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
         http://msdn.microsoft.com/en-us/library/system.globalization.cultureinfo.aspx   
.EXAMPLE
    C:\foo> .\Show-ChineeseParentCulture.ps1
    SPECIFIC CULTURE                                     PARENT CULTURE
    0x0804 zh-CN Chinese (Simplified, PRC)               0x0004 zh-CHS Chinese (Simplified) Legacy
    0x0C04 zh-HK Chinese (Traditional, Hong Kong S.A.R.) 0x7C04 zh-CHT Chinese (Traditional) Legacy
    0x1404 zh-MO Chinese (Traditional, Macao S.A.R.)     0x7C04 zh-CHT Chinese (Traditional) Legacy
    0x1004 zh-SG Chinese (Simplified, Singapore)         0x0004 zh-CHS Chinese (Simplified) Legacy
    0x0404 zh-TW Chinese (Traditional, Taiwan)           0x7C04 zh-CHT Chinese (Traditional) Legacy    
#>

# Display a header
"SPECIFIC CULTURE                                     PARENT CULTURE"

# Determine the specific cultures that use the Chinese language, and displays the parent culture

ForEach ($ci in [System.Globalization.CultureInfo]::GetCultures([System.Globalization.CultureTypes]::SpecificCultures))  {
  if ($ci.TwoLetterISOLanguageName -eq "zh")
   {
    $s1 = "0x{0} {1} {2,-40}" -f $ci.LCID.ToString("X4"), $ci.Name, $ci.EnglishName
    $s2 = "0x{0} {1} {2}" -f $ci.Parent.LCID.ToString("X4"), $ci.Parent.Name, $ci.Parent.EnglishName
    "{0}{1}" -f $s1, $s2
  }
}