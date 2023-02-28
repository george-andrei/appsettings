[CmdletBinding(DefaultParameterSetName = "Update")]
Param (
	[Parameter(ParameterSetName="Update",
		Position = 0,
		HelpMessage = "Update repository settings with local json"
		)]
	[switch]$Update,

	[Parameter(ParameterSetName="Restore",
		HelpMessage = "Restore settings from repository to local"
		)]
	[switch]$Restore,

	[Parameter(ParameterSetName="HardLink",
		HelpMessage = "Create HardLink with the settings.json file"
		)]
	[switch]$HardLink
)

if ($PsCmdlet.ParameterSetName -eq "Update") {
	Write-Host "Update the file in the repository"
	Copy-Item "$env:localappdata\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Destination . -Force
} elseif ($PsCmdlet.ParameterSetName -eq "Restore") {
	Write-Host "Restore terminal settings from repository"
	Copy-Item "./settings.json" -Destination "$env:localappdata\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force
} elseif ($PsCmdlet.ParameterSetName -eq "HardLink") {
	New-Item -ItemType HardLink -Name "./settings.json" -Target "$env:localappdata\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
} else {
	Write-Host "Wrong parameter"
}
