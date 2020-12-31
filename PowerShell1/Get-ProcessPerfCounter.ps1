<#
.SYNOPSIS
    This script creates a process, then displays some perf counters.
.DESCRIPTION
    This script calls System.Diagnostics.Process's Start static
    static method to create a process.
.NOTES
    File Name  : Get-ProcessPerfCounter
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.diagnostics.process.peakworkingset64.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-ProcessPerfCounter.ps1

    System.Diagnostics.Process (notepad) -
    -------------------------------------
      physical memory usage     : 2,512
      base priority             : 8
      priority class            : Normal
      user processor time       : 00:00:00.0156001
      privileged processor time : 00:00:00.0156001
      total processor time      : 00:00:00.0312002
 
    {{ Loads more - sniped for brevity}}
 	
    System.Diagnostics.Process (notepad) -
    -------------------------------------
      physical memory usage     : 12,424
      base priority             : 8
      priority class            : Normal
      user processor time       : 00:00:00.0156001
      privileged processor time : 00:00:00.0624004
      total processor time      : 00:00:00.0780005
 
      Process has ended
      Process exit code: 0
      Peak physical memory usage of the process :  12,424 kb
      Peak paged memory usage of the process    :   2,740 kb
      Peak virtual memory usage of the process  :  88,832 kb
#>
 
##
# Start of script
##
  
# Start up Notepad, catching issues
try  {
$myproc =  [System.Diagnostics.Process]::Start("c:\windows\notepad.exe")
}
catch {
  "Error starting process"
  return
}
 
# Now print perf stats until Notepad.exe is closed
do {
  if ( ! $myproc.HasExited ) {
  $myproc.Refresh()
  ""
  "{0} -"        -f $myProc.ToString()
  "-------------------------------------"
  "  physical memory usage     : {0}" -f $($MyProc.WorkingSet64/1kb).tostring("###,###")
  "  base priority             : {0}" -f $MyProc.BasePriority
  "  priority class            : {0}" -f $MyProc.PriorityClass
  "  user processor time       : {0}" -f $MyProc.UserProcessorTime
  "  privileged processor time : {0}" -f $MyProc.PrivilegedProcessorTime
  "  total processor time      : {0}" -f $MyProc.TotalProcessorTime
   
# calculate overall peak
$peakPagedMem   = $MyProc.PeakPagedMemorySize64
$peakVirtualMem = $MyProc.PeakVirtualMemorySize64
$peakWorkingSet = $MyProc.PeakWorkingSet64
 
} # end of if
    
} # end of do
while (!$myproc.WaitForExit(1000)) # Wait a second and do it again

# Here process has exited
# Print out final results
""
"Process has ended"
"Process exit code: {0}" -f $MyProc.ExitCode

# Display peak memory statistics for the process.
"Peak physical memory usage of the process : {0,7} kb" -f $($peakWorkingSet/1kb).ToString("###,###")
"Peak paged memory usage of the process    : {0,7} kb" -f $($peakPagedMem/1kb).ToString("###,###")
"Peak virtual memory usage of the process  : {0,7} kb" -f $($peakVirtualMem/1kb).ToString("###,###")
# End of script