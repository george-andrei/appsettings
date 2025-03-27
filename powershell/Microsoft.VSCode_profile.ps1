Import-Module posh-git
# If fail: https://ohmyposh.dev/docs/installation/windows

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/emodipt-extend.omp.json" | Invoke-Expression
New-Alias ll Get-ChildItem