# Saved paths #-----------------------------------------------------------------

##Scripts directory
$ScriptsDir = "$PowerShellDir\Scripts"

###Set scripts directory
$SetDir = "$ScriptsDir\Set"

###Test scripts directory
$TestDir = "$ScriptsDir\Test"

###Utility scripts directory
$UtilityDir = "$ScriptsDir\Utility"

##Themes directory
$ThemesDir = "$PowerShellDir\Themes"

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
