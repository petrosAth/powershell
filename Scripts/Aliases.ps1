# Shortcut commands #-----------------------------------------------------------

# Alias for sending items to recycle bin
Set-Alias -Name trash -Value Remove-ItemSafely

# Alias for running nvim through wsl only under Windows
if ($IsWindows) {
    Function nvim {
        # If we are in Windows Terminal start Alacritty
        if ($env:WT_SESSION) {
            alacritty -e Arch.exe runp nvim $args[0]
        }
        else {
            Arch.exe runp nvim $args[0]
        }
    }
}


# Alias for neovide
# Function nvid {
#     param(
#         [string] $File
#     )
#
#     # neovide --geometry=120x40 $File
#     neovide --maximized $File
# }

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
