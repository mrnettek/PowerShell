## To be used to Install Office 2016
## Files are extracted, setup is ran
## and Office is activated with the KMS

# define variables
$kmsServer = '1.1.1.1' # KMS goes here
$strUser = 'SCCM'
$extractFiles = 'extract.exe' # contains office setup files
$appSetup = 'setup.exe' # use "setup /admin" to create a custom.msp and save to updates folder
$appName = 'Office 2016'
$activateOffice = 'c:\Program Files\Microsoft Office\Office16\ospp.vbs'
$localLog = 'log.txt'
$timeFormat = 'yyyy/MM/dd hh:mm:ss tt'
$msgBox1 = 'This version of Office is not compatible with your computer. Please install the 32 bit version.'
$titleBar1 = 'Office 2016'

# Office 2013
$appVisio2013 = 'c:\Program Files (x86)\Microsoft Office\Office15\VISIO.EXE'
$appProject2013 = 'c:\Program Files (x86)\Microsoft Office\Office15\WINPROJ.EXE'
$checkOffice2013_32 = 'c:\Program Files (x86)\Microsoft Office\Office15\WINWORD.EXE'
$checkOffice2013_64 = 'c:\Program Files\Microsoft Office\Office15\WINWORD.EXE'
$scrubOffice2013 = 'scrub2013.vbs' # scrubber from Microsoft

# Office 2010
$appVisio2010 = 'c:\Program Files (x86)\Microsoft Office\Office14\VISIO.EXE'
$appProject2010 = 'c:\Program Files (x86)\Microsoft Office\Office14\WINPROJ.EXE'
$checkOffice2010_32 = 'c:\Program Files (x86)\Microsoft Office\Office14\WINWORD.EXE'
$checkOffice2010_64 = 'c:\Program Files\Microsoft Office\Office14\WINWORD.EXE'
$scrubOffice2010 = 'scrub2010.vbs' # scrubber from Microsoft



# Used for message boxes
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null

# create event log source
new-eventlog -Logname Application -source $appName -ErrorAction SilentlyContinue
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Created event log source." | out-file -filepath $localLog -Append


# Visio 32 bit Compliance
If (Test-Path $appVisio2013){
[Windows.Forms.MessageBox]::Show($msgBox1, $titleBar1, [Windows.Forms.MessageBoxButtons]::OK, [Windows.Forms.MessageBoxIcon]::Information)
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Visio 2013 32 bit was found" | out-file -filepath $localLog -Append
exit
}Elseif (Test-Path $appVisio2010){
[Windows.Forms.MessageBox]::Show($msgBox1, $titleBar1, [Windows.Forms.MessageBoxButtons]::OK, [Windows.Forms.MessageBoxIcon]::Information)
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Visio 2010 32 bit was found" | out-file -filepath $localLog -Append
exit
}Else{
  # // 32 bit Visio does not exist
}

# MS Project 32 bit Compliance
If (Test-Path $appProject2013){
[Windows.Forms.MessageBox]::Show($msgBox1, $titleBar1, [Windows.Forms.MessageBoxButtons]::OK, [Windows.Forms.MessageBoxIcon]::Information)
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Project 2013 32 bit was found" | out-file -filepath $localLog -Append
exit
}ElseIf (Test-Path $appProject2010){
[Windows.Forms.MessageBox]::Show($msgBox1, $titleBar1, [Windows.Forms.MessageBoxButtons]::OK, [Windows.Forms.MessageBoxIcon]::Information)
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Project 2010 32 bit was found" | out-file -filepath $localLog -Append
exit
}Else{
  # // 32 bit MS Project does not exist
}


Clear-Host 

# Office 32 bit Checker
If (Test-Path $checkOffice2013_32){
#Uninstall Office 2013
Write-Host "Removing Office 2013..."
cmd /c cscript $scrubOffice2013 ALL /Quiet /NoCancel
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Removed Office 2013 32 bit" | out-file -filepath $localLog -Append
 }ElseIf (Test-Path $checkOffice2010_32){
 #Uninstall Office 2010
 Write-Host "Removing Office 2010..."
 cmd /c cscript $scrubOffice2010  ALL /Quiet /NoCancel
 $logstamp = (get-date).toString($timeFormat) ; $logstamp + " Removed Office 2010 32 bit" | out-file -filepath $localLog -Append
}Else{
  # // 32 bit Office does not exist
}

# Office 64 bit Checker
If (Test-Path $checkOffice2013_64){
#Uninstall Office 2013
Write-Host "Removing Office 2013..."
#cmd /c cscript $scrubOffice2013 ALL /Quiet /NoCancel
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Detected Office 2013 64 bit" | out-file -filepath $localLog -Append
}ElseIf (Test-Path $checkOffice2010_64){
#Uninstall Office 2010
Write-Host "Removing Office 2010..."
#cmd /c cscript $scrubOffice2010 ALL /Quiet /NoCancel
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Detected Office 2010 64 bit" | out-file -filepath $localLog -Append
}Else{
  # // 32 bit Office does not exist
}


# install application
Clear-Host
Write-Host "Extracting Files..."
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " File extract started" | out-file -filepath $localLog -Append
cmd /c $extractFiles
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " File extract completed" | out-file -filepath $localLog -Append
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Exit code: " + $LastExitCode | out-file -filepath $localLog -Append

Clear-Host 
Write-Host "Launching Setup..."
cmd /c ($appSetup + $silent)
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Launched setup" | out-file -filepath $localLog -Append
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Exit code: " + $LastExitCode | out-file -filepath $localLog -Append

Clear-Host 
Write-Host "Activating Office..."
cmd /c cscript $activateOffice /sethst:$kmsServer
cmd /c cscript $activateOffice /act
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Activation Complete" | out-file -filepath $localLog -Append
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Exit code: " + $LastExitCode | out-file -filepath $localLog -Append 
If ($LastExitCode -eq 0) {
 
# write event log
Clear-Host
Write-Host "Writing event log..."
$startTime = Get-date
$startLog = $strUser + ': ' + $appName + ' COMPLETED SUCCESSFULLY ' + $startTime
Write-Eventlog -Logname Application -Message $startLog -Source $appName -id 777 -entrytype Information -Category 0
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Installed successfully!" | out-file -filepath $localLog -Append
 
# exiting
Clear-Host
Write-Host "Installed successfully! Exiting now..."
Start-Sleep -s 4
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Exiting..." | out-file -filepath $localLog -Append
}
 
Else
 
{
# write event log
Clear-Host
Write-Host "Writing event log..."
$startTime = Get-date
$startLog = $strUser + ': ' + $appName + ' FAILED SETUP ' 
Write-Eventlog -Logname Application -Message $startLog -Source $appName -id 777 -entrytype Information -Category 0
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Failed setup!" | out-file -filepath $localLog -Append
 
# exiting
Clear-Host
Write-Host "Failed setup! Exiting now..."
Start-Sleep -s 4
$logstamp = (get-date).toString($timeFormat) ; $logstamp + " Exiting..." | out-file -filepath $localLog -Append
}