# Shortcut commands #-----------------------------------------------------------

# Alias for sending items to recycle bin
Set-Alias -Name trash -Value Remove-ItemSafely

if ($IsWindows) {
    # Alias for running nvim through wsl
    Function nvim {
        C:\Users\petrosAth\scoop\apps\archwsl\21.8.28.0\Arch.exe runp nvim $args[0]
    }

    # Alias for Arch WSL
    Function arch {
        C:\Users\petrosAth\scoop\apps\archwsl\21.8.28.0\Arch.exe
    }

    # Alias for Manjaro WSL
    Function manjaro {
        C:\Users\petrosAth\scoop\apps\manjarowsl\20220116\Manjaro.exe
    }
}

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
