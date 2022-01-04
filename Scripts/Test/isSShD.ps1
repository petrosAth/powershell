# SSh Daemon running test #-----------------------------------------------------

function isSShD {
    $ServiceName = "sshd"
    $GetStatus = Get-Service -Name $ServiceName

    if ($GetStatus.Status -eq "Running") {return $True} Else {return $False}
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
