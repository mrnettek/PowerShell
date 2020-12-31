$strComputer = "."

$colItems = get-wmiobject -class "Win32_Thread" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Caption: " $objItem.Caption
      write-host "Creation Class Name: " $objItem.CreationClassName
      write-host "CS Creation Class Name: " $objItem.CSCreationClassName
      write-host "CS Name: " $objItem.CSName
      write-host "Description: " $objItem.Description
      write-host "Elapsed Time: " $objItem.ElapsedTime
      write-host "Execution State: " $objItem.ExecutionState
      write-host "Handle: " $objItem.Handle
      write-host "Installation Date: " $objItem.InstallDate
      write-host "Kernel-Mode Time: " $objItem.KernelModeTime
      write-host "Name: " $objItem.Name
      write-host "Operating System Creation Class Name: " $objItem.OSCreationClassName
      write-host "Operating System Name: " $objItem.OSName
      write-host "Priority: " $objItem.Priority
      write-host "Priority Base: " $objItem.PriorityBase
      write-host "Process Creation Class Name: " $objItem.ProcessCreationClassName
      write-host "Process Handle: " $objItem.ProcessHandle
      write-host "Start Address: " $objItem.StartAddress
      write-host "Status: " $objItem.Status
      write-host "Thread State: " $objItem.ThreadState
      write-host "Thread Wait Reason: " $objItem.ThreadWaitReason
      write-host "User-Mode Time: " $objItem.UserModeTime
      write-host
}


