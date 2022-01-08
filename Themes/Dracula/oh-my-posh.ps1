# oh-my-posh configuration #----------------------------------------------------

# Load oh-my-posh and set theme
oh-my-posh --init --shell pwsh --config $HOME\.config\ohmyposh\themes\dracula.omp.json | Invoke-Expression

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
