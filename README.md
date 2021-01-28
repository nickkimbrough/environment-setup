# environment-setup

This project contains a one click setup for my preferred development environment
on Windows 10. It will install and fully configure the following:

- Winget
  - http://aka.ms/winget-InsiderProgram
- Windows Terminal
  - winget install --id=Microsoft.WindowsTerminal -e --silent
  - Windows Terminal Context Menu
    - https://github.com/kerol2r20/Windows-terminal-context-menu
- WSL With Ubuntu
- Docker Desktop
- VSCode
- Powershell latest version
- Posh-Git
  - Install-Module posh-git -AllowPrerelease
- Powertoys
- Git for Windows
- Windows Taskbar Icons
  - Microsoft Edge
  - Windows Terminal
  - VsCode
- WinMerge
  - https://winmerge.org/downloads/
- Powershell 7
  - winget install --id=Microsoft.PowerShell -e --silent

Powershell profile
Import-Module posh-git -AllHosts

# Installing

## Bootstrapping

Before we can kick off the automated scripts, there are a few minor things
needed to ensure the system is ready.

First you must sign up for the Winget insiders program. You can get it
from this URL: http://aka.ms/winget-InsiderProgram

Once signed up, run the following command from windows key + R:

```
ms-windows-store://pdp/?productid=9nblggh4nns1
```

Install this app.

From an admin CMD prompt:

```powershell
winget install git --silent
winget install powertoys --silent
```

```
git clone
```

...WIP to be continued