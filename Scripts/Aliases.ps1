# Shortcut commands #-----------------------------------------------------------

Set-Alias -Name poweroff -Value Stop-Computer
Set-Alias -Name reboot -Value Restart-Computer
Set-Alias -Name trash -Value Remove-ItemSafely
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
