# oh-my-posh configuration #----------------------------------------------------

#Requirements
#requires -module oh-my-posh

#Set oh-my-posh theme
oh-my-posh --init --shell pwsh --config $ThemesDir\Dracula\dracula.omp.json | Invoke-Expression

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
