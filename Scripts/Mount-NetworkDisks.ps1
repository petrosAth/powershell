# Mount network disks #---------------------------------------------------------

#Mount network disks on change disk command if they are not already mounted
Function H: {
	if (-not (Test-Path H:)) {
		net use H: \\10.14.31.101\pshome-storage-share
		cd H:
	}
	else {
		cd H:
	}
}

Function P: {
	if (-not (Test-Path P:)) {
		net use P: \\10.14.31.101\plex-library-share
		cd P:
	}
	else {
		cd P:
	}
}

Function T: {
	if (-not (Test-Path T:)) {
		net use T: \\10.14.31.101\transmission-downloads-share
		cd T:
	}
	else {
		cd T:
	}
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
