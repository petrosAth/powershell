# PSReadLine configuration #----------------------------------------------------

Set-PSReadLineOption -Colors @{
    "Command" = [ConsoleColor]::Green
    "Comment" = [ConsoleColor]::DarkCyan
#    "ContinuationPrompt" = [ConsoleColor]::
#    "DefaultToken" = [ConsoleColor]::
#    "Emphasis" = [ConsoleColor]::
#    "Error" = [ConsoleColor]::
#    "Member" = [ConsoleColor]::
    "Number" = [ConsoleColor]::Blue
    "Operator" = [ConsoleColor]::Magenta
    "Parameter" = [ConsoleColor]::DarkYellow
    "InlinePrediction" = [ConsoleColor]::DarkCyan
#    "Selection" = [ConsoleColor]::
    "String" = [ConsoleColor]::Yellow
    "Type" = [ConsoleColor]::Cyan
    "Variable" = [ConsoleColor]::White
}

#Color schemes corresponding names
#              __________ _______________
#Black         |Black   | |DarkGray     |
#              ---------- ---------------
#              __________ _______________
#Red           |Red     | |DarkRed      |
#              ---------- ---------------
#              __________ _______________
#Green         |Green   | |DarkGreen    |
#              ---------- ---------------
#              __________ _______________
#Yellow        |Yellow  | |DarkYellow   |
#              ---------- ---------------
#              __________ _______________
#Blue          |Blue    | |DarkBlue     |
#              ---------- ---------------
#              __________ _______________
#Purple        |Magenta | |DarkMagenta  |
#              ---------- ---------------
#              __________ _______________
#Cyan          |Cyan    | |DarkCyan     |
#              ---------- ---------------
#              __________ _______________
#White         |Gray    | |White        |
#              ---------- ---------------

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
