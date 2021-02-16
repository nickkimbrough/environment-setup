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

## Bootstrapping

Before we can kick off the automated scripts, there are a few minor things
needed to ensure the system is ready.

### Winget

*Winget is currently in Preview. They hope to make this application publicly
available in May 2021*

First you must sign up for the Winget insiders program with your Microsoft
account. You can get it from this URL: http://aka.ms/winget-InsiderProgram

Once signed up, run the following command from windows key + R:

```
ms-windows-store://pdp/?productid=9nblggh4nns1
```

Make sure you are signed into the store with our Microsoft account.

Install this app. You may have to search for updates to get the preview build.
To verify winget is installed and running, try running `winget` from a command
prompt.

### Git

With Winget installed, open an administrative command prompt and type the
following:

```cmd
winget install --id Git.Git -e --silent
```

## Installing Environment Applications
From an admin PowerShell prompt run:

```powershell
git clone https://github.com/nickkimbrough/environment-setup.git
cd .\environment-setup\Scripts
$executionPolicy = Get-ExecutionPolicy
Set-ExecutionPolicy Unrestricted -Force
.\Install-WingetApplications.ps1
.\Install-Cmdlets.ps1
.\Enable-WSL.ps1
.\Install-VSCodeExtensions.ps1
Set-ExecutionPolicy $executionPolicy -Force
cd ..\..
Remove-Item .\environment-setup\ -Recurse -Force
```

# Future Ideas

- Windows Taskbar Icons
  - Microsoft Edge
  - Windows Terminal
  - VsCode

    - Windows Terminal Context Menu
    - https://github.com/kerol2r20/Windows-terminal-context-menu