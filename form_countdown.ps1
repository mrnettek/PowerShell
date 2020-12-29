# MrNetTek
# eddiejackson.net/blog
# 7/9/2020
# free for public use
# free to claim as your own
 
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms
 
# counter start
$count = 10
 
# form config
$form = New-Object System.Windows.Forms.Form
$form.Icon = [Drawing.Icon]::ExtractAssociatedIcon((Get-Command powershell).Path)
$form.Text = "Countdown"
$form.Width = 350
$form.Height = 175
$label = New-Object System.Windows.Forms.Label
$label.AutoSize = $true
$form.Controls.Add($label)
 
# loop to count
while ($count -ge 0)
{
  $form.Show()
  $label.Text = " Seconds: $($count)"
  start-sleep 1
  $count -= 1
}
 
$form.Close() 