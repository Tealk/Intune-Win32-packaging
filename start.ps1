#Requires -Version 7

param (
    [switch]$h,
    [switch]$t,
    [switch]$ts,
    [switch]$tu,
    [switch]$p,
    [switch]$pm,
    [switch]$c
)

Import-Module -Name ".\functions.psd1"

function Show-HelpMessage {
    Write-Host "Es wurde keine gültige Option angegeben. Verwende den Schalter '-t' oder '-p'."
    Write-Host "Verfügbarer Schalter:"
    Write-Host "-t  zum testen mit Adminrechten"
    Write-Host "-ts zum testen mit System account"
    Write-Host "-tu Vergleicht Paketnamen/Ordnernamen mit denen von Intune"
    Write-Host "-p  zum paketieren eines Programms"
    Write-Host "-pm zum paketieren aller Programme"
    Write-Host "-c  löscht alle .intunewin Dateien die älter als 30 Tage sind"
}

if ($t) {
    Invoke-TestApp
}
elseif ($ts) {
    Invoke-TestAppAsSystem
}
elseif ($tu) {
    Invoke-TestIntune
}
elseif ($p) {
    git submodule update --remote --recursive
    Invoke-Paketieren
}
elseif ($pm) {
    git submodule update --remote --recursive
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