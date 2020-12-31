<#fee
.SYNOPSIS
    Shows Parameter attributes
.DESCRIPTION
    Script is decorated with Parameter attributes to demostrate the use of them
.NOTES
    File Name  : Get-ParameterAttribute1.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    To be posted at:
	http://www.pshscripts.blogspot.com
.EXAMPLE
    Simple usage, with partial parameters specified
    PS C:\foo> .\Get-ParameterAttribute1.ps1 abc
	----
    Domain    : abc
    Computer  : Cookham8
    User      : tfl
    ----
.EXAMPLE
    Simple usage, with all parameters specified
    PS C:\foo> .\Get-ParameterAttribute1.ps1 kapoho, kapoho1, BigKahuna
	----
    Domain    : kapoho
    Computer  : kapoho1
    User      : BigKahuna
    ----
.EXAMPLE
    Showing getting first parameter from the pipeline
    PS C:\foo> "abc", "def", "GHI" |.\Get-ParameterAttribute1.ps1
	----
    Domain    : abc
    Computer  : Cookham8
    User      : tfl
    ----
	----
    Domain    : def
    Computer  : Cookham8
    User      : tfl
    ----
	----
    Domain    : GHI
    Computer  : Cookham8
    User      : tfl
    ----
EXAMPLE
    Shows getting all Value From Remaining Arguments
    PS C:\foo> .\Get-ParameterAttribute1.ps1 abc def ghi xxx xxx xxx xxx
	----
    Domain    : abc
    Compuyter : def
    User      : ghi xxx xxx xxx xxx
.PARAMETER Domain
    A domain name - must be a string
.PARAMETER Computer
    A computer Name - must be a string
.PARAMETER User
    A user name - must be a string
#>
param (
[Parameter(Position=0, Mandatory=$true,ValueFromPipeLine=$true)]
[string] $Domain = "Cookham" ,    
[Parameter(Position=1, Mandatory=$false)]
[string] $Computer = "Cookham8",
[Parameter(Position=2, Mandatory=$false, ValueFromRemainingArguments=$true)]
[string] $User     = "tfl"            
)

Process {
"----"
"Domain    : {0}" -f $domain
"Computer  : {0}" -f $computer
"User      : {0}" -f $user
"----"
}