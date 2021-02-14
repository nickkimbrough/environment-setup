# environment-setup

This project contains a one click setup for my preferred development environment
on Windows 10. It will install the following:

- Winget
- Windows Terminal
- WSL With Ubuntu
- Docker Desktop
- VSCode
- Powershell Core
- Posh-Git
- Powertoys
- Git
- WinMerge
- Powershell 7

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

From an admin PowerShell prompt (not tested yet):

```powershell
git clone https://github.com/nickkimbrough/environment-setup.git
cd .\environment-setup\Scripts
.\Install-WingetApplications.ps1
.\Install-Cmdlets.ps1
.\Enable-WSL.ps1
.\Install-VSCodeExtensions.ps1
```

# Future Ideas

- Windows Taskbar Icons
  - Microsoft Edge
  - Windows Terminal
  - VsCode

    - Windows Terminal Context Menu
    - https://github.com/kerol2r20/Windows-terminal-context-menu