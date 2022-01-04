# Shortcut commands #-----------------------------------------------------------

Set-Alias -Name poweroff -Value Stop-Computer
Set-Alias -Name reboot -Value Restart-Computer
Set-Alias -Name make -Value mingw32-make.exe
Set-Alias -Name trash -Value Remove-ItemSafely
Set-Alias -Name nviq -Value nvim-qt
# Function nvid {
#     param(
#         [string] $File
#     )
#
#     # neovide --geometry=100x40 $File
#     neovide --maximized $File
# }
Function nvip {
    param(
        $File
    )
    if (($File -match "^\.\\*$")) {
        nvim.exe (Join-Path (Get-Item -Path '.\' -Verbose).FullName $File.Substring(1))
    }
    elseif ($File -match "^\.\\.+") {
        nvim.exe (Join-Path (Get-Item -Path '.\' -Verbose).FullName $File.Substring(1))
    }
    elseif ($File -match "^\..+") {
        nvim.exe (Join-Path (Get-Item -Path '.\' -Verbose).FullName $File.Substring(1))
    }
    else {
        nvim.exe
    }
}
Function nvid {
    param(
        $File
    )
    if (($File -match "^\.\\*$")) {
        neovide.exe --geometry=120x40 --maximized (Join-Path (Get-Item -Path '.\' -Verbose).FullName $File.Substring(1))
    }
    elseif ($File -match "^\.\\.+") {
        neovide.exe --geometry=120x40 --maximized (Join-Path (Get-Item -Path '.\' -Verbose).FullName $File.Substring(1))
    }
    elseif ($File -match "^\..+") {
        neovide.exe --geometry=120x40 --maximized (Join-Path (Get-Item -Path '.\' -Verbose).FullName $File.Substring(1))
    }
    else {
        neovide.exe --geometry=120x40 --maximized
    }
}
Function nviq {
    param(
        $File
    )
    if (($File -match "^\.\\*$")) {
        nvim-qt.exe (Join-Path (Get-Item -Path '.\' -Verbose).FullName $File.Substring(1))
    }
    elseif ($File -match "^\.\\.+") {
        nvim-qt.exe (Join-Path (Get-Item -Path '.\' -Verbose).FullName $File.Substring(1))
    }
    elseif ($File -match "^\..+") {
        nvim-qt.exe (Join-Path (Get-Item -Path '.\' -Verbose).FullName $File.Substring(1))
    }
    else {
        nvim-qt.exe
    }
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
