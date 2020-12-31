<#
.SYNOPSIS
    Uses GetType to obtain type information
.DESCRIPTION
    This script creates an object then uses the
	GetType method to return type info
.NOTES
    File Name  : Get-Type.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Type\get-type.ps1'

    Module                     : CommonLanguageRuntimeLibrary
    Assembly                   : mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089
    TypeHandle                 : System.RuntimeTypeHandle
    DeclaringMethod            :
    BaseType                   : System.ValueType
    UnderlyingSystemType       : System.Int32
    FullName                   : System.Int32
    AssemblyQualifiedName      : System.Int32, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561
                             34e089
    Namespace                  : System
    GUID                       : a310fadd-7c33-377c-9d6b-599b0317d7f2
    GenericParameterAttributes :
    IsGenericTypeDefinition    : False
    IsGenericParameter         : False
    GenericParameterPosition   :
    IsGenericType              : False
    ContainsGenericParameters  : False
    StructLayoutAttribute      : System.Runtime.InteropServices.StructLayoutAttribute
    Name                       : Int32
    MemberType                 : TypeInfo
    DeclaringType              :
    ReflectedType              :
    MetadataToken              : 33554629
    TypeInitializer            :
    IsNested                   : False
    Attributes                 : AutoLayout, AnsiClass, Class, Public, SequentialLayout, Sealed, Serializable, Befo
                                 eFieldInit
    IsVisible                  : True
    IsNotPublic                : False
    IsPublic                   : True
    IsNestedPublic             : False
    IsNestedPrivate            : False
    IsNestedFamily             : False
    IsNestedAssembly           : False
    IsNestedFamANDAssem        : False
    IsNestedFamORAssem         : False
    IsAutoLayout               : False
    IsLayoutSequential         : True
    IsExplicitLayout           : False
    IsClass                    : False
    IsInterface                : False
    IsValueType                : True
    IsAbstract                 : False
    IsSealed                   : True
    IsEnum                     : False
    IsSpecialName              : False
    IsImport                   : False
    IsSerializable             : True
    IsAnsiClass                : True
    IsUnicodeClass             : False
    IsAutoClass                : False
    IsArray                    : False
    IsByRef                    : False
    IsPointer                  : False
    IsPrimitive                : True
    IsCOMObject                : False
    HasElementType             : False
    IsContextful               : False
    IsMarshalByRef             : False
#>

##
# Start of script
##

[int] $i = 42
$type = $i.GetType()
$type | fl *
# End of script