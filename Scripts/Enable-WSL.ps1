#Requires -RunAsAdministrator

$arguments = @{
    Online = $true
    FeatureName = "Microsoft-Windows-Subsystem-Linux"
}

Enable-WindowsOptionalFeature @arguments
winget install --id=Canonical.Ubuntu -e --silent