#PowerShell Profile file

# Set PowerShell folder location #----------------------------------------------
if ($IsWindows) {
    $dotfilesDir = "$HOME\dotfiles"
}
else {
    $dotfilesDir = "$HOME\.config"
}

# Import modules #--------------------------------------------------------------
if ($IsWindows) {
    Import-Module -Name Terminal-Icons
}

# Global flags #----------------------------------------------------------------
$Debugging = $False
$RunningTest = $False
$DefaultTheme = "nord"

# Debugging #-------------------------------------------------------------------
#Initialize list for debugging
if ($Debugging -Or $RunningTest) {$LoadedScriptsList = @{}}

# Load scripts #----------------------------------------------------------------
#Load scripts from "Utility" folder
$UtilityScriptsList = @(
    "Paths.ps1"
    "ScriptStatus.ps1"
) | ForEach-Object {. (Join-Path "$dotfilesDir\powershell\Scripts\Utility\" $_)}

#Load scripts from "Scripts", "Set" and "Test" folder
$ScriptsList = @(
    "$ScriptsDir\"
    "$SetDir\"
    "$TestDir\"
) | ForEach-Object {Get-ChildItem ("$_" + "*.ps1") | ForEach-Object {. $_}}

#Load scripts from "Themes" folder
Get-ChildItem ("$ThemesDir\" + "*.ps1") | ForEach-Object {. $_}

# Debugging #-------------------------------------------------------------------
#Print scripts status
if ($Debugging -Or $RunningTest) {. ScriptStatus -print}
