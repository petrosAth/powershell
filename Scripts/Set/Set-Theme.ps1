# Command for setting new theme #-----------------------------------------------

# List of themes
$ThemesList = @(
    "Dracula"
)

# Modify Default-Theme.ps1 file and change the startup theme to the new one.
Function Set-Theme {
    $theme = $args[0]

    if ($ThemesList.contains($theme)) {
        $regex = '(?<=\$DefaultTheme = ")[^"]*'

        #Set the new theme as default
        $ChangeTheme = Get-Content -Path "$dotfilesDir\powershell\Microsoft.PowerShell_profile.ps1"
        $NewTheme = $ChangeTheme -Replace $regex, $theme
        $NewTheme | Set-Content "$dotfilesDir\powershell\Microsoft.PowerShell_profile.ps1"

        #Load the new themes files
        Get-ChildItem ("$ThemesDir\$theme\" + "*.ps1") | ForEach-Object {& (Join-Path "$ThemesDir\$theme\" $_.Name)} | Out-Null
    }
    else {
        Write-Error -Message "There is no theme with that name!"
    }
}

# Set theme for the current instance
. Set-Theme $DefaultTheme

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
