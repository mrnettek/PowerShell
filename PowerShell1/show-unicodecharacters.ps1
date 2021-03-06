<#
.SYNOPSIS
    This script, a re-implementation of an MSDN sample, shows the 
    Unicode details of a unicode character, using PowerShell.
.DESCRIPTION
    This script re-implements a simple MSDN script that takes a Unicode Character
    and uses CharUnicodeInfo class to get details of that character, which are then
    displayed.
.NOTES
    File Name  : Show-UnicodeCharacters.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/system.globalization.charunicodeinfo.aspx
.EXAMPLE
     Psh > .\show-unicodecharacters.ps1
                                            c    Num    Dig   Dec    UnicodeCategory
    U+0061 LATIN SMALL LETTER A             a    -1      -1    -1    LowercaseLetter
    U+0393 GREEK CAPITAL LETTER GAMMA       Γ    -1      -1    -1    UppercaseLetter
    U+0039 DIGIT NINE                       9    9       9     9     DecimalDigitNumber
    U+00B2 SUPERSCRIPT TWO                  ²    2       2     -1    OtherNumber
    U+00BC VULGAR FRACTION ONE QUARTER      ¼    0.25    -1    -1    OtherNumber
    U+0BEF TAMIL DIGIT NINE                 ௯    9      9     9     DecimalDigitNumber
    U+0BF0 TAMIL NUMBER TEN                 ௰    10     -1    -1     OtherNumber
    U+0F33 TIBETAN DIGIT HALF ZERO          ༳    -0.5    -1    -1     OtherNumber
    U+2788 CIRCLED SANS-SERIF DIGIT NINE    ➈    9       9    -1     OtherNumber
#>

# Helper Function
Function PrintProperties {
  param ($char)
  $fmtstring = " {0,-5}  {1,-8}  {2,-9}  {3,-9}  {4,-9}"
  $a = $char
  $b = [System.Globalization.CharUnicodeInfo]::GetNumericValue( $char )
  $c = [System.Globalization.CharUnicodeInfo]::GetDigitValue( $char ) 
  $d = [System.Globalization.CharUnicodeInfo]::GetDecimalDigitValue( $char )
  $e = [System.Globalization.CharUnicodeInfo]::GetUnicodeCategory( $char )
  $fmtstring -f $a, $b, $c, $d, $e
} 
"                                        c      Num      Dig        Dec         UnicodeCategory" 
"U+0061 LATIN SMALL LETTER A            "  + (PrintProperties  "a")
"U+0393 GREEK CAPITAL LETTER GAMMA      "  + (PrintProperties  ([Char] 0x0393) )
"U+0039 DIGIT NINE                      "  + (PrintProperties  "9")

"U+00B2 SUPERSCRIPT TWO                 "  + (PrintProperties  $([Char] 0x00B2) )

"U+00BC VULGAR FRACTION ONE QUARTER     "  + (PrintProperties  $([Char] 0x00BC) )
"U+0BEF TAMIL DIGIT NINE                "  + (PrintProperties  $([Char] 0x0BEF) )
"U+0BF0 TAMIL NUMBER TEN                "  + (PrintProperties  $([Char] 0x0BF0) )
"U+0F33 TIBETAN DIGIT HALF ZERO         "  + (PrintProperties  $([Char] 0x0F33) )
"U+2788 CIRCLED SANS-SERIF DIGIT NINE   "  + (PrintProperties  $([Char] 0x2788) )