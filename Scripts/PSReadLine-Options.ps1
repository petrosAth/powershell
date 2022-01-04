# PSReadLine configuration #----------------------------------------------------

#PSReadLine autofill from history
Set-PSReadLineOption -PredictionSource History

#Switch to list prediction views
Set-PSReadLineOption -PredictionViewStyle ListView

#change up and down to now base on what have typed in your history
Set-PSReadLineKeyHandler -Key Ctrl+p -Function PreviousHistory
Set-PSReadLineKeyHandler -Key Ctrl+n -Function NextHistory

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
