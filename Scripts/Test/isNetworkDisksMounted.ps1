# Network disks status test #---------------------------------------------------

Function isNetworkDisksMounted {
    if ((Test-Path H:) -And (Test-Path P:) -And (Test-Path T:)) {return $True} Else {return $False}
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
