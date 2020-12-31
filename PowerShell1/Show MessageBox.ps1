Function Show-Msgbox 
{
	Param([string]$message=$(Throw "You must specify a message"),
	[string]$button="okonly",
	[string]$icon="information",
	[string]$title="Message Box"
	)

		# Buttons: OkOnly, OkCancel, AbortRetryIgnore, YesNoCancel, YesNo, RetryCancel
		# Icons: Critical, Question, Exclamation, Information

	[reflection.assembly]::loadwithpartialname("microsoft.visualbasic") | Out-Null
	[microsoft.visualbasic.interaction]::Msgbox($message,"$button,$icon",$title)
}

$rc=Show-Msgbox -message "Do you know what you're doing?" `
-icon "exclamation" -button "YesNoCancel" -title "Hey $env:username!!"

Switch ($rc) {

	"Yes" {"I hope your resume is up to date."}
	"No" {"Wise move."}
	"cancel" {"When in doubt, punt."} 

	}
