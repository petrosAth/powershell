# Set Windows Symbolic Links #--------------------------------------------------

# Set Symbolic Links
Function Set-SymLinks {
    if (isAdmin) {
        . $env:USERPROFILE\.config\postWinInstallation\SetSymLinksScript.ps1
    }
    else {
        Write-Error -Message "This action requires Administrator rights!"
    }
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
