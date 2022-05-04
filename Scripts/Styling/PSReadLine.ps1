# PSReadLine configuration #----------------------------------------------------

function SetReadLineTheme {
    if ($DefaultTheme -eq 'dracula' ) {
        Set-PSReadLineOption -Colors @{
            "Command" = [ConsoleColor]::Green
            "Comment" = [ConsoleColor]::DarkCyan
            "Error" = [ConsoleColor]::Red
            "InlinePrediction" = [ConsoleColor]::DarkCyan
            "Number" = [ConsoleColor]::Blue
            "Operator" = [ConsoleColor]::Magenta
            "Parameter" = [ConsoleColor]::DarkYellow
            "String" = [ConsoleColor]::Yellow
            "Type" = [ConsoleColor]::Cyan
            "Variable" = [ConsoleColor]::White
        }
    }
    elseif ($DefaultTheme -eq 'nord') {
        Set-PSReadLineOption -Colors @{
            "Command" = [ConsoleColor]::Blue
            "Comment" = [ConsoleColor]::DarkYellow
            "ContinuationPrompt" = [ConsoleColor]::Yellow
            "Error" = [ConsoleColor]::Red
            "InlinePrediction" = [ConsoleColor]::DarkGray
            "Keyword" = [ConsoleColor]::Magenta
            "Member" = [ConsoleColor]::Blue
            "Number" = [ConsoleColor]::DarkRed
            "Operator" = [ConsoleColor]::Cyan
            "Parameter" = [ConsoleColor]::DarkRed
            "String" = [ConsoleColor]::Green
            "Type" = [ConsoleColor]::Yellow
            "Variable" = [ConsoleColor]::Red
        }
    }
}

. SetReadLineTheme

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
