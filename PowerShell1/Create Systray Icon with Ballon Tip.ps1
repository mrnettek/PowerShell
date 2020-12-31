[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
[reflection.assembly]::loadwithpartialname("System.Drawing")

$icon = new-object system.drawing.icon("Script.ico")
$notify = new-object system.windows.forms.notifyicon
$notify.icon = $icon
$notify.visible = $true
$notify.showballoontip(10,"My Powershell Ballon Tip","and this is my Message ;-)",[system.windows.forms.tooltipicon]::warning)
Start-Sleep 10
