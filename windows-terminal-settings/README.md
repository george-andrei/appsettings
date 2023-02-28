# Windows terminal settings settings.json file backup

A backup repository for my windows-terminal setup.

## Installation

`git clone https://github.com/george-andrei/appsettings`

### Dependencies

This windows terminal setup requires the following packages and fonts:

-   [MesloLGS-NFPL](https://github.com/kalaschnik/meslolgs-nf-template)
-   [Oh My Posh](https://ohmyposh.dev/)
-   ["Oh My ZSH!"](https://ohmyz.sh/)
-   [Debian logo](https://cdn.freebiesupply.com/logos/large/2x/debian-2-logo-png-transparent.png)
-   [Ubuntu logo](https://cdn.freebiesupply.com/logos/large/2x/ubuntu-icon-logo-png-transparent.png)

### Installation instructions

If you installed the dependencies you can install my windows-terminal-settings configuration by running the following commands as the administrator using PowerShell:

```PowerShell
cd
git clone https://github.com/george-andrei/appsettings
cd windows-terminal-settings

# Run Update-TerminalSettings.ps1
./Update-TerminalSettings.ps1
```

`Update-TerminalSettings` accept the following parameters:
* -Update (default)
* -Restore
* -HardLink

Update repository settings with local json
`./Update-TerminalSettings.ps1 -Update`

Restore settings from repository to local
`./Update-TerminalSettings.ps1 -Restore`

Create HardLink with the settings.json file
`./Update-TerminalSettings.ps1 -HardLink`

Default location for the Windows Terminal Settings file: 
`%LOCALAPPDATA%/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json`


This page is inspired by [rickstaa windows-terminal-settings](https://github.com/rickstaa/windows-terminal-settings)