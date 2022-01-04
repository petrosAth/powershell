# Clear all Nvim plugin foders #------------------------------------------------

Function Clear-Nvim {
	Remove-Item "$env:LOCALAPPDATA\nvim-data\lsp_servers" -Recurse -Force
    Remove-Item "$env:LOCALAPPDATA\nvim-data\site" -Recurse -Force
	Remove-Item "$env:LOCALAPPDATA\nvim\plugin" -Recurse -Force
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
