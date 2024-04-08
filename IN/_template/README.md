# Install

ServiceUI.exe -Process:explorer.exe Deploy-Application.exe -DeploymentType Install

# Uninstall

ServiceUI.exe -Process:explorer.exe Deploy-Application.exe -DeploymentType Uninstall

# Detection

**Rule type:** Registry \
**Key path:** `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Intune` \
**Value name:** `$appName` \
**Detection method:** `String comparison` \
**Operator:** `Equals` \
**Value:** `$appVersion`
