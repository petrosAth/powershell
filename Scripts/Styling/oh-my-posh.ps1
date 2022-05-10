# oh-my-posh configuration #----------------------------------------------------

# Load oh-my-posh and set theme
if ($IsWindows) {
    oh-my-posh --init --shell pwsh --config $dotfilesDir\ohmyposh\$DefaultTheme.omp.json | Invoke-Expression
    Enable-PoshTransientPrompt
}
elseif ($IsLinux) {
    oh-my-posh --init --shell pwsh --config $dotfilesDir/ohmyposh/$DefaultTheme.omp.json | Invoke-Expression
    Enable-PoshTransientPrompt
}
else {
		Write-Error -Message "oh-my-posh.ps1 - Not supported operating system"
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
