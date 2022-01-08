# PSReadLine configuration #----------------------------------------------------

#PSReadLine autofill from history
Set-PSReadLineOption -PredictionSource History

#Switch to list prediction views
Set-PSReadLineOption -PredictionViewStyle ListView

#change up and down to now base on what have typed in your history
Set-PSReadLineKeyHandler -Key Ctrl+p -Function PreviousHistory
Set-PSReadLineKeyHandler -Key Ctrl+n -Function NextHistory

# Enable Vi mode
Set-PSReadlineOption -EditMode vi

# Change the cursor based on Vi mode
# https://docs.microsoft.com/en-us/powershell/module/psreadline/set-psreadlineoption?view=powershell-7.1#example-6--use-vimodechangehandler-to-display-vi-mode-changes
function OnViModeChange {
    if ($args[0] -eq 'Command') {
        # Set the cursor to a block.
        Write-Host -NoNewLine "`e[1 q"
    } else {
        # Set the cursor to a line.
        Write-Host -NoNewLine "`e[5 q"
    }
}
# Cursor shapes
# https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h2-Functions-using-CSI-_-ordered-by-the-final-character_s_
# Ps = 0  ⇒  blinking block.
# Ps = 1  ⇒  blinking block.
# Ps = 2  ⇒  steady block.
# Ps = 3  ⇒  blinking underline.
# Ps = 4  ⇒  steady underline.
# Ps = 5  ⇒  blinking bar.
# Ps = 6  ⇒  steady bar.
Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange

# Assign c+n/c+p keys to next/previous
Set-PSReadLineKeyHandler -Key Ctrl+p -ViMode Insert -Function PreviousHistory
Set-PSReadLineKeyHandler -Key Ctrl+n -ViMode Insert -Function PreviousHistory
Set-PSReadLineKeyHandler -Key Ctrl+p -ViMode Command -Function PreviousHistory
Set-PSReadLineKeyHandler -Key Ctrl+n -ViMode Command -Function PreviousHistory

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
