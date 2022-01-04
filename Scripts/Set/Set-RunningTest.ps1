# Change Running flag value #---------------------------------------------------

# Set Running-Test flag
Function Set-RunningTest {
    if (isAdmin) {
        if (("True", "False").contains($args[0])) {
            $value = $args[0]
            $regex = '(?<=\$RunningTest = \$)[^ ]*'

            #Store the new value
            $ChangeValue = Get-Content -Path "$PowerShellDir\Profile.ps1"
            $NewValue = $ChangeValue -Replace $regex, $value
            $NewValue | Set-Content "$PowerShellDir\Profile.ps1"
        }
        else {
            Write-Error -Message "The parameter can only be 'True' or 'False'!"
        }
    }
    else {
        Write-Error -Message "This action requires Administrator rights!"
    }
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
