# Saved paths #-----------------------------------------------------------------

##Scripts directory
$ScriptsDir = "$dotfilesDir\powershell\Scripts"

###Set scripts directory
$SetDir = "$ScriptsDir\Set"

###Test scripts directory
$TestDir = "$ScriptsDir\Test"

###Utility scripts directory
$UtilityDir = "$ScriptsDir\Utility"

##Themes directory
$ThemesDir = "$dotfilesDir\powershell\Themes"

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
