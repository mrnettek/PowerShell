# Specify the directories you want to manipulate.
 $path  = "c:\foo1";
 $target = "c:\foo2";

try {
# Determine whether the source directory exists.
# Create the directory it does not exist.
 if (!([System.Io.Directory]::Exists($path))) {
    "Creating $path"
    [System.IO.Directory]::CreateDirectory($path)
	[System.IO.File]::CreateText($target + "\myoldfile.txt")
}

# Delete the target to ensure it is not there.
if ([System.IO.Directory]::Exists($target))  {
 "Deleting $target"
 [System.io.Directory]::Delete($target, $true)
}

# Move the directory.
"Now Moving folder"
[System.io.Directory]::Move($path, $target)

# Create a file in the directory.
[System.IO.File]::CreateText($target + "\myfile.txt")

# Count the files in the target directory.
 "The number of files in {0} is {1}" -f $target, ([System.io.Directory]::GetFiles($target).Length)
} 
catch   {
 "The process failed: {0}" -f $Error[0]
} 
    