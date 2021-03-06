# Change Debugging flag value #-------------------------------------------------

# Set Debugging flag
Function Set-Debugging {
    if (isAdmin) {
        if (("True", "False").contains($args[0])) {
            $value = $args[0]
            $regex = '(?<=\$Debugging = \$)[^ ]*'

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
