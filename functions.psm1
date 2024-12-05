<#
.SYNOPSIS
PowerShell module for packaging applications for Microsoft Intune.

.DESCRIPTION
This PowerShell module provides functions for packaging applications for Microsoft Intune. It enables the creation of IntuneWin packages (.intunewin) for the deployment of applications in Microsoft Intune.

.FUNCTIONS
The following functions are included:
- Get-Folder: Displays a folder dialog for selecting a directory.
- Get-File: Displays a file dialog for selecting a file.
- Invoke-Package: Creates an IntuneWin package from the source folder.
- Invoke-PackageAll: Creates IntuneWin packages for all subfolders in the source directory.
- Invoke-MSIntuneGraph: Establishes a connection to Microsoft Intune and installs the required module.
- Invoke-Upload: Uploads the IntuneWin package to Microsoft Intune.
- Invoke-TestIntune: Tests the folder names against the Intune package names
- Invoke-TestApp: Starts the application packaging in a PowerShell console.
- Remove-OldIntuneWinFiles: Deletes old IntuneWin files from a directory.
- Invoke-PSAppDeployToolkit: Updates the PSAppDeployToolkit files.

.PARAMETER initialDirectory
The optional start path for the folder or file selection in the corresponding functions.

.NOTES
This module requires the 'IntuneWin32App' module to interact with Microsoft Intune.
The 'IntuneWin32App' module is installed automatically if required.
Use the functions to prepare and upload IntuneWin packages.
#>

$TenantID = "domain.onmicrosoft.com"
$ClientID = "00000000-x000-0000-x0x0-00x000000000"
$ClientSecret = "x0x0x~0xxxxxxxx.0-xxxxZ0xxxxx-0xxxx-xxxx"

function Get-Folder(${initialDirectory}) {
  [void] [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
  $FolderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog
  $FolderBrowserDialog.RootFolder = 'MyComputer'
  if (${initialDirectory}) { $FolderBrowserDialog.SelectedPath = ${initialDirectory} }
  $result = $FolderBrowserDialog.ShowDialog()

  if (${result} -eq 'OK') {
    return $FolderBrowserDialog.SelectedPath
  }
  else {
    Write-Host "No folder selected. The script closes."
    exit 1
  }
}

function Get-File(${initialDirectory}) {
  [void] [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
  $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
  if (${initialDirectory}) { $OpenFileDialog.initialDirectory = ${initialDirectory} }
  $OpenFileDialog.filter = 'All files (*.*)|*.*'
  $result = $OpenFileDialog.ShowDialog()

  if (${result} -eq 'OK') {
    return $OpenFileDialog.SelectedPath
  }
  else {
    Write-Host "No File selected. The script closes."
    exit 1
  }
}

function Invoke-CompilePackage {
  param (
      [string]$appName,
      [string]$appPath
  )

  $curDir = Get-Location
  $templatePath = "${curDir}\IN\_template"
  $tempPackagePath = Join-Path -Path $env:TEMP -ChildPath "TempPackage_${appName}"

  if (Test-Path ${tempPackagePath}) {
    Remove-Item -Path ${tempPackagePath} -Recurse -Force
  }
  New-Item -Path ${tempPackagePath} -ItemType Directory | Out-Null

  Copy-Item -Path "${templatePath}\*" -Destination ${tempPackagePath} -Recurse

  Copy-Item -Path "${appPath}\*" -Destination ${tempPackagePath} -Recurse -Force

  return ${tempPackagePath}
}

function Invoke-Paketieren {
  param (
    [Parameter(Mandatory = $false)]
    [string]$FolderAPP
  )

  $curDir = Get-Location
  if (-not $FolderAPP) {
    $FolderAPP = Get-Folder "${curDir}\IN\Standard"
  }
  $File = "Deploy-Application"
  $appFoldername = (Split-Path ${FolderAPP} -Leaf)
  $FilePs1 = "${FolderAPP}\${File}.ps1"
  $FileExe = "${FolderAPP}\${File}.exe"
  $FolderOUT = ${FolderAPP} -creplace 'IN', 'OUT'
  $FileOUT = "${FolderOUT}\${File}.intunewin"
  $Version = Get-Date -Format "MM_dd_yy_HH_mm"
  Import-Module ${FilePs1} 2>&1

  if (${FolderAPP} -notmatch 'template') {
    Write-Host "${appFoldername}"
    Write-Host "=========="
    if (Get-Item -Path ${FileOUT} -ErrorAction Ignore) {
      Rename-Item -Path "${FileOUT}" -NewName "${Version}.intunewin"
    }
    try {
      Write-Host "Compile is being started..."
      $tempFolderAPP = $(Invoke-CompilePackage -appName "${appFoldername}" -appPath "${FolderAPP}")
    }
    catch {
      Write-Host "Error while compiling ${appFoldername} $_" -ForegroundColor Red
    }
    finally {
      $FilePs1 = "${tempFolderAPP}\${File}.ps1"
      $FileExe = "${tempFolderAPP}\${File}.exe"
    }
    try {
      if ((Test-Path -Path "${FilePs1}" -PathType Leaf) -and (Test-Path -Path "${FileExe}" -PathType Leaf)) {
        Write-Host "Packaging is being started..."
        $null = (Microsoft-Win32-Content-Prep-Tool\IntuneWinAppUtil.exe -c "${tempFolderAPP}" -s "${FileExe}" -o "${FolderOUT}" -q)
        if (Test-Path -Path ${FileOUT} -ErrorAction Ignore) {
          Write-Host "and was executed successfully." -ForegroundColor Green
          if ( -not [string]::IsNullOrEmpty(${uuid})) {
            Invoke-Upload
          }
          else {
            throw "${appName} has no UUID."
          }
        }
        else {
          throw "The packaging was not executed successfully."
        }
      }
      else {
        throw "The required files do not exist."
      }
    }
    catch {
      Write-Host "Error while packaging ${appFoldername} $_" -ForegroundColor Red
    }
    finally {
      if (Test-Path -Path $tempFolderAPP) {
        Remove-Item -Path $tempFolderAPP -Recurse -Force
      }
    }
  }
}

function Invoke-PaketierenAll {
  $curDir = Get-Location
  $FolderIN = Get-Folder "${curDir}\IN\Standard"
  $FolderAPPs = Get-ChildItem -Path ${FolderIN} -Directory

  foreach (${FolderAPP} in ${FolderAPPs}) {
    if (${FolderAPP} -notmatch 'template') {
      Invoke-Paketieren -FolderAPP ${FolderAPP}
      Write-Host "=========="
    }
  }
}

function Invoke-MSIntuneGraph {
  $TokenLifeTime = ($Global:AuthenticationHeader.ExpiresOn - (Get-Date).ToUniversalTime()).TotalMinutes
  if (${TokenLifeTime} -le 0) {
    $global:MSIntuneGraphToken = $false
  }
  if (-not $global:MSIntuneGraphToken) {
    if (-not (Get-Module -ListAvailable | Where-Object { $_.Name -eq "IntuneWin32App" })) {
      Write-Host "The IntuneWin32App module is not installed. It is being installed now..."
      Install-Module -Name "IntuneWin32App" -AcceptLicense -Force
    }
    Connect-MSIntuneGraph -TenantID "${TenantID}" -ClientID "${ClientID}" -ClientSecret "${ClientSecret}"
    $global:MSIntuneGraphToken = $true
  }
}

function Invoke-Upload {
  Invoke-MSIntuneGraph
  Import-Module ${FolderAPP}\Deploy-Application.ps1 2>&1

  if ([string]::IsNullOrEmpty(${uuid})) {
    Write-Host "${appFoldername} not available in Intune."
  }
  else {
    try {
      Write-Host "Uploading started..."
      $null = (Update-IntuneWin32AppPackageFile -ID ${uuid} -FilePath ${FileOUT})
      $null = (Set-IntuneWin32App -ID ${uuid} -AppVersion ${appVersion})

      Write-Host "and was successfully completed." -ForegroundColor Green
      Write-Host "The detection rule still needs to be adjusted!" -ForegroundColor Magenta
    }
    catch {
      Write-Host "Error uploading ${appFoldername} $_" -ForegroundColor Red
    }
  }
}

function Invoke-TestIntune {
  $curDir = Get-Location
  $FolderIN = Get-Folder "${curDir}\IN\Standard"
  $FolderAPPs = Get-ChildItem -Path ${FolderIN} -Directory
  Invoke-MSIntuneGraph

  foreach (${FolderAPP} in ${FolderAPPs}) {
    $FileAPP = "${FolderAPP}\Deploy-Application.ps1"
    if (Get-Item -Path ${FileAPP} -ErrorAction Ignore) {
      $appName = (Split-Path ${FolderAPP} -Leaf)
      $PackName = Get-IntuneWin32App -DisplayName "${appName}"
      if ([string]::IsNullOrEmpty(${PackName})) {
        Write-Host "${appName} not found."
      }
      else {
        Write-Host "${appName} was found."
      }
    }
  }
}

function Invoke-TestApp {
  $folderPath = Get-Folder
  $deployExePfad = Join-Path -Path ${folderPath} -ChildPath "Deploy-Application.ps1"
  $command = "${deployExePfad}"
  Start-Process pwsh -ArgumentList "-NoExit", "${command}" -Verb RunAs
}

function Invoke-TestAppAsSystem {
  #broken
  $command = "psexec -s -i cmd.exe"
  # then execute 'ServiceUI.exe -Process:explorer.exe Deploy-Application.exe'
  Start-Process cmd.exe -ArgumentList "/K ${command}" -Verb RunAs
}

function Remove-OldIntuneWinFiles {
  $targetFolder = "C:\_Intune\OUT\"
  $daysToKeep = 30
  $currentDate = Get-Date
  $intuneWinFiles = Get-ChildItem -Path ${targetFolder} -Recurse -Filter "*.intunewin" | Where-Object { $_.LastWriteTime -lt ($currentDate.AddDays(-$daysToKeep)) -and $_.Name -ne "install.intunewin" -and $_.Name -ne "Deploy-Application.intunewin" }
  if (${intuneWinFiles}) {
    foreach ($file in ${intuneWinFiles}) {
      try {
        Remove-Item -Path $file.FullName -Force
        Write-Host "The file '$($file.FullName)' has been deleted."
      }
      catch {
        Write-Host "Error deleting file '$($file.FullName)': $_" -ForegroundColor Red
      }
    }
  }
}

function Invoke-PSAppDeployToolkit {
  $curDir = Get-Location
  Write-Host "Select the folder in which the new PSAppDeployToolkit files are located."
  $NewToolkitPath = Get-Folder "C:\Users\$env:USERNAME\Downloads"
  Write-Host "Select the folder in which the packages to be updated are located."
  $DeployPath = Get-Folder "${curDir}\IN"
  $NewDeployApplication = Join-Path -Path ${NewToolkitPath} -ChildPath "Deploy-Application.exe"
  $NewAppDeployToolkit = Join-Path -Path ${NewToolkitPath} -ChildPath "AppDeployToolkit"
  $DeployChildFolder = Get-ChildItem -Path ${DeployPath} -Directory -Recurse
  foreach (${ChildItem} in ${DeployChildFolder}) {
    $DeployPfad = Join-Path -Path $ChildItem.FullName -ChildPath "Deploy-Application.exe"

    if (Test-Path ${DeployPfad} -PathType Leaf) {
      Copy-Item -Path ${NewDeployApplication} -Destination $ChildItem.FullName -Force
      Copy-Item -Path ${NewAppDeployToolkit} -Destination $ChildItem.FullName -Recurse -Force
    }
  }
}