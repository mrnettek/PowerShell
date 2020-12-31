Get-WmiObject win32_process -Filter "name='explorer.exe'" | 
Format-Table handlecount,quotaNonPagedPoolUsage, PeakVirtualSize, `
WorkingSetSize, VirtualSize, UserModeTime,KernelModeTime, `
ProcessID, Name
