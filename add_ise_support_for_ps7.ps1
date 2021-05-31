$ErrorActionPreference= 'silentlycontinue'
$psISE.CurrentPowerShellTab.AddOnsMenu.Submenus.Clear()
$psISE.CurrentPowerShellTab.AddOnsMenu.Submenus.Add("Switch to PowerShell 7", { 
        function New-OutOfProcRunspace {
            param($ProcessId)
  
            $ConnInfo = New-Object -TypeName System.Management.Automation.Runspaces.NamedPipeConnectionInfo -ArgumentList @($ProcessId)
            $DefaultType = [System.Management.Automation.Runspaces.TypeTable]::LoadDefaultTypeFiles()
  
            $Runspace = [System.Management.Automation.Runspaces.RunspaceFactory]::CreateRunspace($ConnInfo, $Host, $Default)
  
            $Runspace.Open()
            $Runspace
        }
  
        $PowerShell = Start-Process PWSH -ArgumentList @("-NoExit") -PassThru -WindowStyle Hidden
        $Runspace = New-OutOfProcRunspace -ProcessId $PowerShell.Id
        $Host.PushRunspace($Runspace)
}, "ALT+F5") | Out-Null
  
$psISE.CurrentPowerShellTab.AddOnsMenu.Submenus.Add("Switch to PowerShell 5", { 
    $Host.PopRunspace()
  
    $ChildProc = Get-CimInstance -ClassName win32_process | where {$_.ParentProcessId -eq $Pid}
    $ChildProc | ForEach-Object { Stop-Process -Id $_.ProcessId }
  
}, "ALT+F6") | Out-Null
