$strComputer = "."

$colItems = get-wmiobject -class "Win32_TerminalService" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Accept Pause: " $objItem.AcceptPause
      write-host "Accept Stop: " $objItem.AcceptStop
      write-host "Caption: " $objItem.Caption
      write-host "Checkpoint: " $objItem.CheckPoint
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Description: " $objItem.Description
      write-host "Desktop Interact: " $objItem.DesktopInteract
      write-host "Disconnected Sessions: " $objItem.DisconnectedSessions
      write-host "Display Name: " $objItem.DisplayName
      write-host "Error Control: " $objItem.ErrorControl
      write-host "Estimated Session Capacity: " $objItem.EstimatedSessionCapacity
      write-host "Exit Code: " $objItem.ExitCode
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Name: " $objItem.Name
      write-host "Path Name: " $objItem.PathName
      write-host "Process ID: " $objItem.ProcessId
      write-host "Raw Session Capacity: " $objItem.RawSessionCapacity
      write-host "Resource Constraint: " $objItem.ResourceConstraint
      write-host "Service Specific Exit Code: " $objItem.ServiceSpecificExitCode
      write-host "Service Type: " $objItem.ServiceType
      write-host "Started: " $objItem.Started
      write-host "Start Mode: " $objItem.StartMode
      write-host "Start Name: " $objItem.StartName
      write-host "State: " $objItem.State
      write-host "Status: " $objItem.Status
      write-host "System Creation Class Name: " $objItem.SystemCreationClassName
      write-host "System Name: " $objItem.SystemName
      write-host "Tag ID: " $objItem.TagId
      write-host "Total Sessions: " $objItem.TotalSessions
      write-host "Wait Hint: " $objItem.WaitHint
      write-host
}


