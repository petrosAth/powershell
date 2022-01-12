# Shortcut commands #-----------------------------------------------------------

# Alias for sending items to recycle bin
Set-Alias -Name trash -Value Remove-ItemSafely

# Alias for neovide
Function nvid {
    param(
        [string] $File
    )

    # neovide --geometry=120x40 $File
    neovide --maximized $File
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
