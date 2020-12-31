$Car = New-Module -AsCustomObject {
[String] $Manufacturer    = "Volkswagam"
[String] $Make            = "Passat 2.0 Sport"
[String] $Colour          = "Grey"
[int]    $EngineCapacity  = 1990
[int]    $Bhp             = 140
[int]    $doors           = 4

#Car Start
[bool] $started = $false

function startcar {
	if ($started) {Write-Host 'Car already started'; return}
		$this.started = $true
	Write-Host "car started"
}
Export-ModuleMember -Variable * ; Export-ModuleMember -Function *
}