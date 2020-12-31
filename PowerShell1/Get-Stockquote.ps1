<#
.SYNOPSIS
    Gets stock quotes using a web servoice
.DESCRIPTION
    This funciton uses the New-WebServiceProxy cmdlet to
	create a web service proxy. Then it calls that proxy
	to get stock information. 
.NOTES
    File Name  : get-stockquote.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
   Original post:  
   http://PoshCode.org/embed/752
   Updated script posted:
   http://www.pshscripts.blogspot.com
.INPUTTYPE
   String(s) representing stock tickers to find
.RETURNVALUE
   XML Element, holding stock details
.EXAMPLE
    Run from PowerShell Prompt:
	Get-StockQuote "MSFT"
	Output - left as an exercise for the reader
.EXAMPLE
    Run from Pipeline
	"IBM","INTC" | Get-StockQuote
    Output - left as an exercise for the reader
.PARAMETER TICKER
    A string, or array of strings representing stock tickers
	The function gets stock details for each stock ticker provided
#>

function Get-StockQuote {
param(
[Parameter(Position=0, Mandatory=$FALSE, ValueFromPipeline=$TRUE)] 
[String] $TICKER="MSFT" )
process {
   $ticker
   $s = new-webserviceproxy -uri http://www.webservicex.net/stockquote.asmx
   foreach ($symbol in $ticker) {
      $result = [xml]$s.GetQuote($symbol)
	  $result.StockQuotes.Stock
	} # end foreach
} #end process block
} # end function


"Example 1:"
"=========="
Get-StockQuote MSFT
""
"Example 2:"
"=========="
"IBM","INTC" | Get-StockQuote