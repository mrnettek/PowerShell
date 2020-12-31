Function Show-Inputbox 
{
	Param([string]$message=$(Throw "You must enter a prompt message"),
	[string]$title="Input",
	[string]$default
	)

	[reflection.assembly]::loadwithpartialname("microsoft.visualbasic") | Out-Null
	[microsoft.visualbasic.interaction]::InputBox($message,$title,$default)
} 

$c=Show-Inputbox -message "Enter a computername" `
-title "Computername" -default $env:Computername

if ($c.Trim()) {
	Get-WmiObject win32_computersystem -computer $c
}
