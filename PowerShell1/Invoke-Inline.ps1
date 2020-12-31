################################################################################ 
##
## Invoke-Inline.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Library support for inline C# 
## 
## Usage 
##  1) Define just the body of a C# method, and store it in a string.  "Here 
##     strings" work great for this.  The code can be simple: 
## 
##     $codeToRun = "Console.WriteLine(Math.Sqrt(337));" 
## 
##     or more complex: 
## 
##     $codeToRun = @" 
##         string firstArg = (string) ((System.Collections.ArrayList) arg)[0]; 
##         int secondArg = (int) ((System.Collections.ArrayList) arg)[1]; 
## 
##         Console.WriteLine("Hello {0} {1}", firstArg, secondArg ); 
##      
##         returnValue = secondArg * 3; 
##     "@ 
## 
##  2) (Optionally) Pack any arguments to your function into a single object. 
##     This single object should be strongly-typed, so that PowerShell does
##     not treat  it as a PsObject. 
##     An ArrayList works great for multiple elements.  If you have only one  
##     argument, you can pass it directly. 
##    
##     [System.Collections.ArrayList] $arguments =
##         New-Object System.Collections.ArrayList 
##     [void] $arguments.Add("World") 
##     [void] $arguments.Add(337) 
## 
##  3) Invoke the inline code, optionally retrieving the return value.  You can 
##     set the return value in your inline code by assigning it to the 
##     "returnValue" variable as shown above. 
## 
##     $result = Invoke-Inline $codeToRun $arguments 
## 
## 
##     If your code is simple enough, you can even do this entirely inline: 
## 
##     Invoke-Inline "Console.WriteLine(Math.Pow(337,2));" 
##   
################################################################################ 
param(
    [string] $code = $(throw "Please specify the code to invoke"), 
    [object] $arg,
    [string[]] $reference = @()
    )

## Stores a cache of generated inline objects.  If this library is dot-sourced 
## from a script, these objects go away when the script exits. 
if(-not (Test-Path Variable:\Lee.Holmes.inlineCache))
{
    ${GLOBAL:Lee.Holmes.inlineCache} = @{}
}

## The main function to execute inline C#.   
## Pass the argument to the function as a strongly-typed variable.  They will  
## be available from C# code as the Object variable, "arg". 
## Any values assigned to the "returnValue" object by the C# code will be  
## returned to the caller as a return value. 

function main
{
    ## See if the code has already been compiled and cached 
    $cachedObject = ${Lee.Holmes.inlineCache}[$code] 

    ## The code has not been compiled or cached 
    if($cachedObject -eq $null)
    { 
        $codeToCompile = 
@"
    using System; 

    public class InlineRunner 
    { 
        public Object Invoke(Object arg) 
        { 
            Object returnValue = null; 

            $code 

            return returnValue; 
        } 
    } 
"@

        ## Obtains an ICodeCompiler from a CodeDomProvider class. 
        $provider = New-Object Microsoft.CSharp.CSharpCodeProvider 

        ## Get the location for System.Management.Automation DLL 
        $dllName = [PsObject].Assembly.Location

        ## Configure the compiler parameters 
        $compilerParameters = New-Object System.CodeDom.Compiler.CompilerParameters 

        $assemblies = @("System.dll", $dllName) 
        $compilerParameters.ReferencedAssemblies.AddRange($assemblies) 
        $compilerParameters.ReferencedAssemblies.AddRange($reference)
        $compilerParameters.IncludeDebugInformation = $true 
        $compilerParameters.GenerateInMemory = $true 

        ## Invokes compilation.  
        $compilerResults =
            $provider.CompileAssemblyFromSource($compilerParameters, $codeToCompile) 

        ## Write any errors if generated.         
        if($compilerResults.Errors.Count -gt 0) 
        { 
            $errorLines = "`n$codeToCompile"
            foreach($error in $compilerResults.Errors) 
            { 
                $errorLines += "`n`t" + $error.Line + ":`t" + $error.ErrorText 
            } 
            Write-Error $errorLines 
        } 
        ## There were no errors.  Store the resulting object in the object "
        ## cache. 
        else 
        { 
            ${Lee.Holmes.inlineCache}[$code] = 
                $compilerResults.CompiledAssembly.CreateInstance("InlineRunner") 
        } 

        $cachedObject = ${Lee.Holmes.inlineCache}[$code]
   } 

   ## Finally invoke the C# code 
   if($cachedObject -ne $null)
   { 
       return $cachedObject.Invoke($arg) 
   } 
} 

. Main