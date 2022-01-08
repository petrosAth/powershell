#PowerShell Profile file

# For Windows #-----------------------------------------------------------------
# Create the file ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
# and add
# Load relocated profile file
# . ~\.config\PowerShell\Profile.ps1
# ------------------------------------------------------------------------------

# Set PowerShell folder location #----------------------------------------------
$PowerShellDir = "~\.config\PowerShell"

# Global flags #----------------------------------------------------------------
$Debugging = $True
$RunningTest = $False
$DefaultTheme = "Dracula"

# Debugging #-------------------------------------------------------------------
#Initialize list for debugging
if ($Debugging -Or $RunningTest) {$LoadedScriptsList = @{}}

# Load scripts #----------------------------------------------------------------
#Load scripts from "Utility" folder
$UtilityScriptsList = @(
    "Paths.ps1"
    "ScriptStatus.ps1"
) | ForEach-Object {. (Join-Path "$PowerShellDir\Scripts\Utility\" $_)}

#Load scripts from "Scripts", "Set" and "Test" folder
$ScriptsList = @(
    "$ScriptsDir\"
    "$SetDir\"
    "$TestDir\"
) | ForEach-Object {Get-ChildItem ("$_" + "*.ps1") | ForEach-Object {. $_}}

#Load scripts from "Themes" folder
Get-ChildItem ("$ThemesDir\$DefaultTheme\" + "*.ps1") | ForEach-Object {. $_}

# Debugging #-------------------------------------------------------------------
#Print scripts status
if ($Debugging -Or $RunningTest) {. ScriptStatus -print}
