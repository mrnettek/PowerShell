<#
.SYNOPSIS
    This script 
.DESCRIPTION
    This script
.NOTES
    File Name  : get-autohelp.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://
.EXAMPLE
.PARAMETER bar
#>

//Connect to the local, default instance of SQL Server. 
Server srv; 
srv = new Server(); 
//Reference the AdventureWorks2008R2 database. 
Database db; 
db = srv.Databases("AdventureWorks2008R2"); 
//Define and create three new file groups on the database. 
FileGroup fg2; 
fg2 = new FileGroup(db, "Second"); 
fg2.Create(); 
FileGroup fg3; 
fg3 = new FileGroup(db, "Third"); 
fg3.Create(); 
FileGroup fg4; 
fg4 = new FileGroup(db, "Fourth"); 
fg4.Create(); 
//Define a partition function by supplying the parent database and name arguments in the constructor. 
PartitionFunction pf; 
pf = new PartitionFunction(db, "TransHistPF"); 
//Add a partition function parameter that specifies the function uses a DateTime range type. 
PartitionFunctionParameter pfp; 
pfp = new PartitionFunctionParameter(pf, DataType.DateTime); 
pf.PartitionFunctionParameters.Add(pfp); 
//Specify the three dates that divide the data into four partitions. 
object[] val; 
val = new object[] {"1/1/2003", "1/1/2004", "1/1/2005"}; 
pf.RangeValues = val; 
//Create the partition function. 
pf.Create(); 
//Define a partition scheme by supplying the parent database and name arguments in the constructor. 
PartitionScheme ps; 
ps = new PartitionScheme(db, "TransHistPS"); 
//Specify the partition function and the filegroups required by the partition scheme. 
ps.PartitionFunction = "TransHistPF"; 
ps.FileGroups.Add("PRIMARY"); 
ps.FileGroups.Add("second"); 
ps.FileGroups.Add("Third"); 
ps.FileGroups.Add("Fourth"); 
//Create the partition scheme. 
ps.Create(); 
} 