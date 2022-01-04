# Print scripts' status #-------------------------------------------------------

#Show scripts and flags loading status
Function ScriptStatus {
    if (("-print", "-show").contains($args[0])) {
        #Print scripts status
        if ($Debugging -And ($args[0] -eq "-print")) {
            $StatusDirList = ("$UtilityDir\", "$TestDir\", "$ScriptsDir\", "$ThemesDir\$DefaultTheme\") | ForEach-Object {
                $DirName = (get-item $_).Name
                Write-Host "Checking " -NoNewline

                if ($DirName -eq "Scripts") {Write-Host "general" -NoNewline} else {Write-Host $DirName -NoNewline}

                Write-Host " scripts" -NoNewline
                Write-Host ("_" * (21 - $DirName.length))

                Get-ChildItem ($_ + "*.ps1") | ForEach-Object {
                    $ScriptName = $_.Name.Substring(0, $_.Name.Length - 4)
                    Write-Host ($ScriptName + $("." * (35 - $_.Name.length))) -NoNewline
                    if ($LoadedScriptsList[($ScriptName + "Script")] -eq $True) {
                            Write-Host "." -NoNewline
                            Write-Host "Loaded" -ForegroundColor Green
                        }
                        else {
                            Write-Host "Missing" -ForegroundColor Red
                        }
                }

                Write-Host
            }
        }

        #Run test scripts and print result
        if ($RunningTest -Or ($args[0] -eq "-show")) {
            Write-Host "Running Test scripts" -NoNewLine
            Write-Host ("_" * 18)

            Get-ChildItem ("$TestDir\" + "*.ps1") | ForEach-Object {
                    $ScriptCommand = $_.Name.Substring(0, $_.Name.Length - 4)

                    Write-Host ($ScriptCommand + $("." * (37 - $_.Name.length))) -NoNewline

                    $Status = . $ScriptCommand

                    if ($Status) {
                        Write-Host "." -NoNewline
                        Write-Host $Status -ForegroundColor Cyan
                    }
                    else {
                        Write-Host $Status -ForegroundColor Red
                    }
                }

            if ($args[0] -ne "-show") {Write-Host}
        }
    }
}

# Debugging #-------------------------------------------------------------------
if ($Debugging) {
    $ScriptName = $MyInvocation.MyCommand.Name
    $ScriptName = $ScriptName.Substring(0, $ScriptName.Length - 4)
    $LoadedScriptsList[($ScriptName + "Script")] = $True
}
