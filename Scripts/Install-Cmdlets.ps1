#Requires -RunAsAdministrator

Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
#If PowerShellGet is old, update it first
# BUG BUG The new module isn't loaded and the next Install-Module with
# -AllowPrerelease will fail.
if ((Get-Module PowerShellGet).Version.ToString() -eq "1.0.0.1") {
    Install-Module PowershellGet -Force
}
Install-Module posh-git -AllowPrerelease -Force
Add-PoshGitToProfile -AllHosts
