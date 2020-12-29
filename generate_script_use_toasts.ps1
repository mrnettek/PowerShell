# MrNetTek
# eddiejackson.net/blog
# 6/7/2020
# free for public use
# free to claim as your own
 
Clear-Host
  
# TOAST MESSAGES
  
# toast1
$toast1_heading = "Microsoft Intune Message"
$toast1_msg1 = "Post Setup is about to begin."
$toast1_msg2 = "`n`nLaunching app installs now...."
  
  
# toast2
$toast2_heading = "Microsoft Intune Message"
$toast2_msg1 = "Apps have been installed successfully!"
  
  
  
  
# LOAD ASSEMBLIES
[Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[Reflection.Assembly]::LoadWithPartialName("System.Drawing")
Add-Type -AssemblyName PresentationFramework
  
  
# FOLDER LOGIC
# Check if PowerShell folder does not exist
if (!(Test-Path C:\PowerShell)) {
    # if not exist, create folder
    New-Item C:\PowerShell -ItemType directory -Force 
}
                   
  
# FUNCTION TO GENERATE THE TOAST ICON
function Generate-Icon {
   
    # icon stored as base64
    $Base64String = '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'
       
    # icon path and name
    $Image = 'c:\PowerShell\icon.ico'
       
    # convert base64 to bytes
    [byte[]]$Bytes = [convert]::FromBase64String($Base64String)
       
    # create icon from bytes
    [System.IO.File]::WriteAllBytes($Image,$Bytes)
   
}
  
# ICON LOGIC
# Check if toast icon does not exist
if (!(Test-Path C:\PowerShell\icon.ico)) {
    # if not exist, run icon function
    Generate-Icon
}
  
$global:icon = "c:\PowerShell\icon.ico"
  
 
# CREATE YOUR SCRIPT 
Try {       
 
    # make the script file
    New-Item "C:\PowerShell\script.cmd" -Type File -force
      
    # create content 
    $Line1 = "start """" notepad.exe"  
    $Line2 = "timeout /t 5"
    $Line3 = "taskkill /f /im notepad.exe"
  
    # output content to script
    $Line1 | Out-File -FilePath "C:\PowerShell\script.cmd" -Encoding ASCII    
    $Line2 | Out-File -FilePath "C:\PowerShell\script.cmd" -Encoding ASCII -Append  
    $Line3 | Out-File -FilePath "C:\PowerShell\script.cmd" -Encoding ASCII -Append
  
}
  
Catch {
 
    #Write-Host "Script Error Detected!"
    #[System.Windows.MessageBox]::Show('Script Error Detected!')
  
}
 
 
# TOAST 1
Try {  
 
    # create the toast
    $global:toast1 = New-Object System.Windows.Forms.NotifyIcon
    $toast1.icon = $icon
    $toast1.text = "Downloading from cloud..."
    $toast1.visible = $true  
    # show toast
    $toast1.ShowBalloonTip(10,$toast1_heading,$toast1_msg1 + $toast1_msg2,[System.Windows.Forms.ToolTipIcon]::Info)
    Start-Sleep -Seconds 10    
    # perform cleanup
    # note, you may want to move this cleanup to below the script,
    # so the icon notification will be available during the execution of the script
    $global:toast1.dispose()
    Remove-Variable -Name toast1 -Scope Global
    Start-Sleep -Seconds 5
 
    }
  
Catch {
 
    #Write-Host "Toast1 Error Detected!"
    #[System.Windows.MessageBox]::Show('Toast1 Error Detected!')
  
}
  
 
 
# EXECUTE SCRIPT
Try { 
 
    # execute the script you created (or just other cmdlets or commands)
    Start-Process -FilePath "C:\PowerShell\script.cmd" -WindowStyle Hidden -Wait  
 
}
  
Catch {
 
    #Write-Host "Script Execution Error!"
    #[System.Windows.MessageBox]::Show('Script Execution Error!')
  
}
 
 
 
# TOAST 2
Try {   
 
    # create the toast
    $global:toast2 = New-Object System.Windows.Forms.NotifyIcon
    $toast2.icon = $icon
    $toast2.text = "Great Success!"
    $toast2.visible = $true
    # show toast
    $toast2.ShowBalloonTip(10,$toast2_heading,$toast2_msg1,[System.Windows.Forms.ToolTipIcon]::Info)
    Start-Sleep -Seconds 10    
    # perform cleanup
    $global:toast2.dispose()
    Remove-Variable -Name toast2 -Scope Global
    Start-Sleep -Seconds 5
  
}
  
Catch {
 
    #Write-Host "Toast2 Error Detected!"
    #[System.Windows.MessageBox]::Show('Toast2 Error Detected!') 
}
  
  
  
# Note
  
# HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify\ToastAppIdentities\
  
# Get-Member -InputObject  $Global:toast1 