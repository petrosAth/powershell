### Install modules
#### For Windows
Install-Module -Name PowerShellGet  -Repository PSGallery -Scope CurrentUser -AllowPrerelease -Force
Install-Module -Name PSReadLine     -Repository PSGallery -Scope CurrentUser -AllowPrerelease -Force
Install-Module -Name posh-git       -Repository PSGallery -Scope CurrentUser
Install-Module -Name oh-my-posh     -Repository PSGallery -Scope CurrentUser
Install-Module -Name Terminal-Icons -Repository PSGallery -Scope CurrentUser
Install-Module -Name Recycle        -Repository PSGallery -Scope CurrentUser
#### For Linux
Install-Module -Name PowerShellGet  -Repository PSGallery -AllowPrerelease -Force
Install-Module -Name PSReadLine     -Repository PSGallery -AllowPrerelease -Force
Install-Module -Name posh-git       -Repository PSGallery
Install-Module -Name oh-my-posh     -Repository PSGallery
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module -Name Recycle        -Repository PSGallery

### Configure PSReadLine
Get-PSReadLineOption
Set-PSReadLineOption -PredictionSource History
