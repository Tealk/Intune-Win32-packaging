<#
.SYNOPSIS
PowerShell-Modul für die Paketierung von Anwendungen für Microsoft Intune.

.DESCRIPTION
Dieses PowerShell-Modul bietet Funktionen zum Paketieren von Anwendungen für Microsoft Intune. Es ermöglicht das Erstellen von IntuneWin-Paketen (.intunewin) für die Bereitstellung von Anwendungen in Microsoft Intune.

.FUNCTIONS
Folgende Funktionen sind enthalten:
- Get-Folder: Zeigt einen Ordnerdialog zur Auswahl eines Verzeichnisses an.
- Get-File: Zeigt einen Dateidialog zur Auswahl einer Datei an.
- Invoke-Paketieren: Erstellt ein IntuneWin-Paket aus dem Quellordner.
- Invoke-PaketierenAll: Erstellt IntuneWin-Pakete für alle Unterordner im Quellverzeichnis.
- Invoke-MSIntuneGraph: Stellt eine Verbindung zu Microsoft Intune her und installiert das erforderliche Modul.
- Invoke-Upload: Lädt das IntuneWin-Paket in Microsoft Intune hoch.
- Invoke-TestIntune: Testet die Ordnernamen gegen die Intune Paketnamen
- Invoke-TestApp: Startet die Anwendungspaketierung in einer PowerShell-Konsole.
- Remove-OldIntuneWinFiles: Löscht alte IntuneWin-Dateien aus einem Verzeichnis.

.PARAMETER initialDirectory
Der optionale Startpfad für die Ordner- oder Dateiauswahl in den entsprechenden Funktionen.

.NOTES
Dieses Modul erfordert das Modul 'IntuneWin32App' zur Interaktion mit Microsoft Intune.
Das Modul 'IntuneWin32App' wird bei Bedarf automatisch installiert.
Verwenden Sie die Funktionen, um IntuneWin-Pakete vorzubereiten und hochzuladen.
#>

$TenantID = "name.onmicrosoft.com"

function Get-Folder($initialDirectory) {
  [void] [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
  $FolderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog
  $FolderBrowserDialog.RootFolder = 'MyComputer'
  if ($initialDirectory) { $FolderBrowserDialog.SelectedPath = $initialDirectory }
  $result = $FolderBrowserDialog.ShowDialog()

  if ($result -eq 'OK') {
    return $FolderBrowserDialog.SelectedPath
  }
  else {
    Write-Host "Kein Ordner ausgewählt. Das Skript wird beendet."
    exit 1
  }
}

function Get-File($initialDirectory) {
  [void] [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
  $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
  if ($initialDirectory) { $OpenFileDialog.initialDirectory = $initialDirectory }
  $OpenFileDialog.filter = 'All files (*.*)|*.*'
  $result = $OpenFileDialog.ShowDialog()

  if ($result -eq 'OK') {
    return $OpenFileDialog.SelectedPath
  }
  else {
    Write-Host "Kein Ordner ausgewählt. Das Skript wird beendet."
    exit 1
  }
}

function Invoke-Paketieren {
  $curDir = Get-Location
  $FolderAPP = Get-Folder "$curDir\IN\Standard"
  $File = "Deploy-Application"
  $appFoldername = (Split-Path $FolderAPP -Leaf)
  $FileAPP = "$FolderAPP\$File.exe"
  $FolderOUT = $FolderAPP -creplace 'IN', 'OUT'
  $FileOUT = "$FolderOUT\$File.intunewin"
  $Version = Get-Date -Format "MM_dd_yy_HH_mm"

  if ($FolderAPP -notmatch 'template') {
    if (Get-Item -Path $FileAPP -ErrorAction Ignore) {
      Write-Host "$appFoldername"
      Write-Host "=========="
      if (Get-Item -Path $FileOUT -ErrorAction Ignore) {
        Rename-Item -Path "$FileOUT" -NewName "$Version.intunewin"
      }
      try {
        if ((Test-Path -Path "$FolderAPP\$File.ps1" -PathType Leaf) -and (Test-Path -Path "$FolderAPP\$File.exe" -PathType Leaf)) {
          Write-Host "Die Paketierung wird gestartet..."
          $null = (Microsoft-Win32-Content-Prep-Tool\IntuneWinAppUtil.exe -c "$FolderAPP" -s "$FileAPP" -o "$FolderOUT" -q)
          if (Test-Path -Path $FileOUT -ErrorAction Ignore) {
            Write-Host "und wurde erfolgreich ausgeführt." -ForegroundColor Green
            Invoke-Upload
          } else {
            throw "Die Paketierung wurde nicht erfolgreich ausgeführt."
          }
        } else {
          throw "Die erforderlichen Dateien existieren nicht."
        }
      } catch {
        Write-Error "Fehler beim Paketieren von $appFoldername $_"
      }
    }
    else {
      Write-Host -NoNewLine 'Keine Deploy-Application.exe gefunden. Abbruch.';
      $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
    }
  }
}

function Invoke-PaketierenAll {
  $curDir = Get-Location
  $FolderIN = Get-Folder "$curDir\IN\Standard"
  $FolderAPPs = Get-ChildItem -Path $FolderIN -Directory
  $File = "Deploy-Application"
  $Version = Get-Date -Format "yy_MM_dd_HH_mm"

  foreach ($FolderAPP in $FolderAPPs) {
    $appFoldername = (Split-Path $FolderAPP -Leaf)
    $FileAPP = "$FolderAPP\$File.exe"
    $FolderOUT = $FolderAPP -creplace 'IN', 'OUT'
    $FileOUT = "$FolderOUT\$File.intunewin"
    if ($FolderAPP -notmatch 'template') {
      Write-Host "$appFoldername"
      Write-Host "=========="
      if (Test-Path -Path $FileOUT -ErrorAction Ignore) {
        Rename-Item -Path "$FileOUT" -NewName "$Version.intunewin"
      }
      try {
        if ((Test-Path -Path "$FolderAPP\$File.ps1" -PathType Leaf) -and (Test-Path -Path "$FolderAPP\$File.exe" -PathType Leaf)) {
          Write-Host "Die Paketierung wird gestartet..."
          $null = (Microsoft-Win32-Content-Prep-Tool\IntuneWinAppUtil.exe -c "$FolderAPP" -s "$FileAPP" -o "$FolderOUT" -q)
          if (Test-Path -Path $FileOUT -ErrorAction Ignore) {
            Write-Host "und wurde erfolgreich ausgeführt." -ForegroundColor Green
            Invoke-Upload
          } else {
            throw "Die Paketierung wurde nicht erfolgreich ausgeführt."
          }
        } else {
          throw "Die erforderlichen Dateien existieren nicht."
        }
      } catch {
        Write-Error "Fehler beim Paketieren von $appFoldername $_"
      }
      Write-Host "=========="
    }
  }
}

function Invoke-MSIntuneGraph {
  $TokenLifeTime = ($Global:AuthenticationHeader.ExpiresOn - (Get-Date).ToUniversalTime()).TotalMinutes
  if ($TokenLifeTime -le 0) {
    $global:MSIntuneGraphToken = $false
  }
  if (-not $global:MSIntuneGraphToken) {
    if (-not (Get-Module -ListAvailable | Where-Object { $_.Name -eq "IntuneWin32App" })) {
      Write-Host "Das Modul IntuneWin32App ist nicht installiert. Es wird jetzt installiert..."
      Install-Module -Name "IntuneWin32App" -AcceptLicense -Force
  }
    Connect-MSIntuneGraph -TenantID "$TenantID"
    $global:MSIntuneGraphToken = $true
  }
}

function Invoke-Upload {
  Invoke-MSIntuneGraph

  $appFoldername = (Split-Path $FolderAPP -Leaf)
  $PackID = (Get-IntuneWin32App -DisplayName "$appFoldername").Id
  if ([string]::IsNullOrEmpty($PackID)) {
    Write-Host ".intunewin Datei wurde nicht gefunden."
  }
  else {
    Import-Module $FolderAPP\Deploy-Application.ps1 2>&1
    try {
      Write-Host "Wird hochgeladen..."
      $null = (Update-IntuneWin32AppPackageFile -ID $PackID -FilePath $FileOUT)
      $null = (Set-IntuneWin32App -ID $PackID -AppVersion $appVersion)

      Write-Host "und wurde erfolgreich beendet." -ForegroundColor DarkGreen
      Write-Host "Es muss noch die Erkennungsregel angepasst werden!" -ForegroundColor Magenta
    } catch {
      Write-Error "Fehler beim Hochladen von $appFoldername $_"
    }
  }
}

function Invoke-TestIntune {
  $curDir = Get-Location
  $FolderIN = Get-Folder "$curDir\IN\Standard"
  $FolderAPPs = Get-ChildItem -Path $FolderIN -Directory
  Invoke-MSIntuneGraph

  foreach ($FolderAPP in $FolderAPPs) {
    $FileAPP = "$FolderAPP\Deploy-Application.ps1"
    if (Get-Item -Path $FileAPP -ErrorAction Ignore) {
      $appName = (Split-Path $FolderAPP -Leaf)
      $PackName = Get-IntuneWin32App -DisplayName "$appName"
      if ([string]::IsNullOrEmpty($PackName)) {
        Write-Host "$appName nicht gefunden."
      }
      else {
        Write-Host "$appName wurde gefunden."
      }
    }
  }
}

function Invoke-TestApp {
  $ordnerPfad = Get-Folder
  $deployExePfad = Join-Path -Path $ordnerPfad -ChildPath "Deploy-Application.ps1"
  $command = "${deployExePfad}"
  Start-Process pwsh -ArgumentList "-NoExit", "$command" -Verb RunAs
}

function Invoke-TestAppAsSystem {
  #broken
  $ordnerPfad = Get-Folder
  $deployExePfad = Join-Path -Path $ordnerPfad -ChildPath "Deploy-Application.exe"
  $command = "psexec -s -i ${deployExePfad}"
  Start-Process cmd.exe -ArgumentList "/K $command" -Verb RunAs
}

function Remove-OldIntuneWinFiles {
  $targetFolder = "C:\_Intune\OUT\"
  $daysToKeep = 30
  $currentDate = Get-Date
  $intuneWinFiles = Get-ChildItem -Path $targetFolder -Recurse -Filter "*.intunewin" | Where-Object { $_.LastWriteTime -lt ($currentDate.AddDays(-$daysToKeep)) -and $_.Name -ne "install.intunewin" -and $_.Name -ne "Deploy-Application.intunewin" }
  if ($intuneWinFiles) {
    foreach ($file in $intuneWinFiles) {
      try {
        Remove-Item -Path $file.FullName -Force
        Write-Host "Die Datei '$($file.FullName)' wurde gelöscht."
      }
      catch {
        Write-Host "Fehler beim Löschen der Datei '$($file.FullName)': $_" -ForegroundColor Red
      }
    }
  }
}