# Install

%SystemRoot%\System32\WindowsPowerShell\v1.0\PowerShell.exe -ExecutionPolicy Bypass -NoProfile -File Invoke-ServiceUI.ps1 -DeploymentType Install -AllowRebootPassThru

# Uninstall

%SystemRoot%\System32\WindowsPowerShell\v1.0\PowerShell.exe -ExecutionPolicy Bypass -NoProfile -File Invoke-ServiceUI.ps1 -DeploymentType Uninstall -AllowRebootPassThru

# Detection

**Rule type:** Registry \
**Key path:** `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Intune` \
**Value name:** `$appName` \
**Detection method:** `String comparison` \
**Operator:** `Equals` \
**Value:** `$appVersion`
