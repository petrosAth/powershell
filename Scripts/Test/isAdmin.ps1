# Administrator rights test #---------------------------------------------------

# Source - https://megamorf.gitlab.io/2020/05/26/check-if-powershell-is-running-as-administrator/
function isAdmin {
    [Security.Principal.WindowsIdentity]::GetCurrent().Groups -contains 'S-1-5-32-544'
}

# Debugging #==-----------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
