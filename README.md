### Install modules
Install-Module -Name PowerShellGet -Scope CurrentUser -AllowPrerelease -Force
Install-Module -Name Recycle -Scope CurrentUser
Install-Module -Name PSReadLine -Scope CurrentUser -AllowPrerelease -Force
Install-Module -Name posh-git -Scope CurrentUser
Install-Module -Name oh-my-posh -Scope CurrentUser
Install-Module -Name Terminal-Icons -Repository PSGallery -Scope CurrentUser

### Configure PSReadLine
Get-PSReadLineOption
Set-PSReadLineOption -PredictionSource History
