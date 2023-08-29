Intune installation files
============

## Requirements

- [Powershell 7.0+](https://github.com/PowerShell/PowerShell)
- [Microsoft Win32 Content Prep Tool](https://github.com/Microsoft/Microsoft-Win32-Content-Prep-Tool) included
- [IntuneWin32App](https://github.com/MSEndpointMgr/IntuneWin32App)

Used the [PSAppDeployToolkit](https://github.com/PSAppDeployToolkit/PSAppDeployToolkit), [here](http://allnewandimproved.psappdeploytoolkit.com/functions/) is the documentation of the functions.

With the start.ps1 you can test the package as well as start the packaging:

```
-t to test with admin rights
-ts to test with system account
-tu to compare package names/folder names with those of Intune
-p to package one program
-pm to package all programs in a folder
-c deletes all .intunewin files older than 30 days
```

### Setup

In `functions.psm1` the variable `$TenantID` must be adjusted.

## Deploy-Application.ps1

Normally only the variables in `Deploy-Application.ps1` need to be adjusted for each packaging/update.

Packaging also uploads the package to Inune if the folder name is the same as the app name in Intune.

## Detection rule

Whether a software is installed or not is detected by registry entries, depending on whether the software is installed as system or user there are 2 paths that can be checked:

```
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Intune
HKEY_CURRENT_USER\SOFTWARE\Microsoft\Intune
```

## Logs

Important logs can be found under the following paths:

```
C:\Windows\Logs\Software
C:\ProgramData\Microsoft\IntuneManagementExtension\Logs
- AgentExecutor.log
- IntuneManagementExtension.log
```

The best way to open these files is to use the [CMTrace.exe] included here.

### Regkeys

With the following command the keys can be displayed:

```PowerShell
Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Intune", "HKCU:\SOFTWARE\Microsoft\Intune"| Select-Object _ -ExcludeProperty "PS_"
```

## License

[Intune-Win32-packaging](https://github.com/Tealk/Intune-Win32-packaging) © 2023 by Tealk is licensed under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1)