<#
.SYNOPSIS
    This script displaysthe property values for a globlisation region
.DESCRIPTION
    This script
.NOTES
    File Name  : get-regioninfo.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.globalization.regioninfo.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-RegionInfo.ps1'
    Name:                         US
    DisplayName:                  United States
    EnglishName:                  United States
    IsMetric:                     False
    ThreeLetterISORegionName:     USA
    ThreeLetterWindowsRegionName: USA
    TwoLetterISORegionName:       US
    CurrencySymbol:               $
    ISOCurrencySymbol:            USD

   The two RegionInfo instances are equal.
    
#>
 
##
# start of script
##
 
# greate a region

$myRI1 = New-Object System.Globalization.RegionInfo "US" 
"   Name:                         {0}" -f $myRI1.Name
"   DisplayName:                  {0}" -f $myRI1.DisplayName
"   EnglishName:                  {0}" -f $myRI1.EnglishName
"   IsMetric:                     {0}" -f $myRI1.IsMetric
"   ThreeLetterISORegionName:     {0}" -f $myRI1.ThreeLetterISORegionName
"   ThreeLetterWindowsRegionName: {0}" -f $myRI1.ThreeLetterWindowsRegionName
"   TwoLetterISORegionName:       {0}" -f $myRI1.TwoLetterISORegionName 
"   CurrencySymbol:               {0}" -f $myRI1.CurrencySymbol 
"   ISOCurrencySymbol:            {0}" -f $myRI1.ISOCurrencySymbol 
""

# Compare the RegionInfo above with another RegionInfo created using CultureInfo
$culinfo = New-Object system.Globalization.CultureInfo "en-us", $false
$myRI2   = New-Object System.Globalization.RegionInfo $culinfo.lcid
 if ( $myRI1.Equals( $myRI2 )) {
   "The two RegionInfo instances are equal."
}
else {
   "The two RegionInfo instances are NOT equal."
}
   