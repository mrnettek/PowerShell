$strComputer = "."

$colItems = get-wmiobject -class "Win32_Process" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Command Line: " $objItem.CommandLine
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "Creation Date: " $objItem.CreationDate
      write-host "CS Creation Class Name: " $objItem.CSCreationClassName
      write-host "CS Name: " $objItem.CSName
      write-host "Description: " $objItem.Description
      write-host "Executable Path: " $objItem.ExecutablePath
      write-host "Execution State: " $objItem.ExecutionState
      write-host "Handle: " $objItem.Handle
      write-host "Handle Count: " $objItem.HandleCount
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Kernel-Mode Time: " $objItem.KernelModeTime
      write-host "Maximum Working Set Size: " $objItem.MaximumWorkingSetSize
      write-host "Minimum Working Set Size: " $objItem.MinimumWorkingSetSize
      write-host "Name: " $objItem.Name
      write-host "Operating System Creation Class Name: " $objItem.OSCreationClassName
      write-host "Operating System Name: " $objItem.OSName
      write-host "Other Operation Count: " $objItem.OtherOperationCount
      write-host "Other Transfer Count: " $objItem.OtherTransferCount
      write-host "Page Faults: " $objItem.PageFaults
      write-host "Page File Usage: " $objItem.PageFileUsage
      write-host "Parent Process ID: " $objItem.ParentProcessId
      write-host "Peak Page File Usage: " $objItem.PeakPageFileUsage
      write-host "Peak Virtual Size: " $objItem.PeakVirtualSize
      write-host "Peak Working Set Size: " $objItem.PeakWorkingSetSize
      write-host "Priority: " $objItem.Priority
      write-host "Private Page Count: " $objItem.PrivatePageCount
      write-host "Process ID: " $objItem.ProcessId
      write-host "Quota Non-Paged Pool Usage: " $objItem.QuotaNonPagedPoolUsage
      write-host "Quota Paged Pool Usage: " $objItem.QuotaPagedPoolUsage
      write-host "Quota Peak Non-Paged Pool Usage: " $objItem.QuotaPeakNonPagedPoolUsage
      write-host "Quota Peak Paged Pool Usage: " $objItem.QuotaPeakPagedPoolUsage
      write-host "Read Operation Count: " $objItem.ReadOperationCount
      write-host "Read Transfer Count: " $objItem.ReadTransferCount
      write-host "Session ID: " $objItem.SessionId
      write-host "Status: " $objItem.Status
      write-host "Termination Date: " $objItem.TerminationDate
      write-host "Thread Count: " $objItem.ThreadCount
      write-host "User-Mode Time: " $objItem.UserModeTime
      write-host "Virtual Size: " $objItem.VirtualSize
      write-host "Windows Version: " $objItem.WindowsVersion
      write-host "Working Set Size: " $objItem.WorkingSetSize
      write-host "Write Operation Count: " $objItem.WriteOperationCount
      write-host "Write Transfer Count: " $objItem.WriteTransferCount
      write-host
}


