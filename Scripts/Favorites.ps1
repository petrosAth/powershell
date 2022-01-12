# Favorites #-------------------------------------------------------------------

#Favorite folders
Function fcd {
	if ($args[0] -eq "AppData") {
		Set-Location $env:APPDATA
	}
	if ($args[0] -eq "Local") {
		Set-Location $env:LOCALAPPDATA
	}
	elseif ($args[0] -eq "Projects") {
		Set-Location H:\Projects
	}
	elseif ($args[0] -eq "Learning") {
		Set-Location H:\Projects\Learning
	}
	elseif ($args[0] -eq "powershell") {
		Set-Location $PowerShellDir
	}
	elseif ($args[0] -eq "nvim") {
		Set-Location $env:LOCALAPPDATA\nvim
	}
	elseif ($args[0] -eq "nvim-data") {
		Set-Location $env:LOCALAPPDATA\nvim-data
	}
	elseif ($args[0] -eq ".config") {
		Set-Location $HOME\.config
	}
	else {
		Write-Error -Message "No favorite folder with that name!"
	}
}

#Favorite ssh hosts
Function fssh {
	if ($args[0] -eq "plex") {
		ssh root@10.14.31.200
	}
	elseif ($args[0] -eq "transmission") {
		ssh root@10.14.31.201
	}
	elseif ($args[0] -eq "transmission-x") {
		ssh root@10.14.31.202
	}
	else {
		Write-Error -Message "No favorite ssh target with that name!"
	}
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
