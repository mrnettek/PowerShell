<# 
.SYNOPSIS 
    Displays summary of machine.config 
.DESCRIPTION 
    This script is a re-write of an MSDN sample which fetchs the machine.config 
    file, prints out file path, and key sections. Also shows how many sections 
    exist in the machine.config file. Also fixed errors in original C# code 
    and improved the layout of the results a bit. 
.NOTES 
    File Name  : get-machineconfig.ps1 
    Author     : Thomas Lee - tfl@psp.co.uk 
    Requires   : PowerShell V2 CTP3 
  .LINK 
     Updated Powershell script posted to: 
     http://pshscripts.blogspot.com/2009/02/get-machineconfig.html
     MSDN Sample at: 
     http://msdn.microsoft.com/en-us/library/system.configuration.configurationmanager.openmachineconfiguration(VS.80).aspx 
  .EXAMPLE 
      PSH [C:\foo]: .\get-machinefoncif.ps1 
      File path: C:\Windows\Microsoft.NET\Framework\v2.0.50727\Config\machine.config 
       
         Name                                Allow Definition 
         ----                                ---------------- 
      system.data                        MachineToApplication 
      windows                            MachineToApplication 
      system.webServer                   MachineToApplication 
      mscorlib                           MachineToApplication 
      system.data.oledb                  MachineToApplication 
      system.data.oracleclient           MachineToApplication 
      system.data.sqlclient              MachineToApplication 
      configProtectedData                MachineToApplication 
      satelliteassemblies                MachineToApplication 
      system.data.dataset                MachineToApplication 
      startup                            MachineToApplication 
      system.data.odbc                   MachineToApplication 
      system.diagnostics                 MachineToApplication 
      runtime                            MachineToApplication 
      system.codedom                     MachineToApplication 
      system.runtime.remoting            MachineToApplication 
      connectionStrings                  MachineToApplication 
      assemblyBinding                    MachineToApplication 
      appSettings                        MachineToApplication 
      system.windows.forms               MachineToApplication 
      Total number of sections: 20 
  #> 
   
  ### 
  #  Start of Script 
  # Get the machine.config file. 
  #### 
   
  # Get config file 
  $config = [System.Configuration.ConfigurationManager]::OpenMachineConfiguration() 
   
  #Display machine.config path. 
  "";"File path: {0}" -f $config.FilePath; "" 
   
  # Loop to get the sections and display basic information. 
  "{0,-25}     {1,25}"  -f "   Name", "   Allow Definition" 
  "{0,-25}     {1,25}"  -f "   ----", "   ----------------" 
  $i = 0 
  foreach ($section in $config.Sections)  { 
  "{0,-25}     {1,25}" -f $section.SectionInformation.Name,$section.SectionInformation.AllowExeDefinition 
  $i++ 
  } 
  # Display total sections     
  "Total number of sections: {0}" -f $i  