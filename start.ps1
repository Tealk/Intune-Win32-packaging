#Requires -Version 7
#Requires -Module IntuneWin32App

param (
    [switch]$h,
    [switch]$t,
    [switch]$ts,
    [switch]$tu,
    [switch]$p,
    [switch]$pm,
    [switch]$c,
    [switch]$udp
)

Import-Module -Name ".\functions.psd1"

function Show-HelpMessage {
    Write-Host "No valid option was specified."
    Write-Host "Available switch:"
    Write-Host "-t for testing with admin rights"
    Write-Host "-tu Compares package names/folder names with those of Intune"
    Write-Host "-p for packaging a program"
    Write-Host "-pm to package all programs"
    Write-Host "-c deletes all .intunewin files older than 30 days"
}

if ($t) {
    Invoke-TestApp
}
elseif ($tu) {
    Invoke-TestIntune
}
elseif ($p) {
#    git submodule update --remote --recursive
    Invoke-Paketieren
}
elseif ($pm) {
#    git submodule update --remote --recursive
    Invoke-PaketierenAll
}
elseif ($h) {
    Show-HelpMessage
}
elseif ($c) {
    Remove-OldIntuneWinFiles
}
else {
    Show-HelpMessage
}