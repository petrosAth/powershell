# starship initialization #-----------------------------------------------------

# # Change Window Title
# function Invoke-Starship-PreCommand {
#     $host.ui.Write("`e]0;$pwd`a")
# }
#
# # Load starship and set theme
# if ($IsWindows) {
#     $ENV:STARSHIP_CONFIG = "$HOME\.config\starship\themes\dracula.toml"
# }
# elseif ($IsLinux) {
#     $ENV:STARSHIP_CONFIG = "$HOME/.config/starship/themes/dracula.toml"
# }
# else {
# 		Write-Error -Message "starship.ps1 - Not supported operating system"
# }
#
# Invoke-Expression (&starship init powershell)

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
