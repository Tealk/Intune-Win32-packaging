# Module manifest for module 'functions'

@{
  ModuleVersion = '2.1.0'
  Author = 'Tealk'
  Description = 'PowerShell module for packaging applications for Microsoft Intune.'

  FunctionsToExport = @(
      'Get-Folder',
      'Get-File',
      'Invoke-Paketieren',
      'Invoke-PaketierenAll',
      'Invoke-MSIntuneGraph',
      'Invoke-Upload',
      'Invoke-TestIntune',
      'Invoke-TestApp',
      'Invoke-TestAppAsSystem',
      'Remove-OldIntuneWinFiles',
      'Invoke-PSAppDeployToolkit'
  )

  # Script module or binary module file associated with this manifest.
  RootModule = 'functions.psm1'

  # Abhängigkeiten des Moduls
  RequiredModules = @('IntuneWin32App')

  # Minimum version of the Windows PowerShell engine required by this module
  PowerShellVersion = '7.0'

  # ID used to uniquely identify this module
  GUID = '5c0a554e-152b-483f-8c51-740ce019b593'

  # Andere PowerShell-Module, die von diesem Modul importiert werden sollen
  # ImportierteModule = @()

  # Aliase, die aus dem Modul exportiert werden sollen (optional)
  # AliasesToExport = @()

  # Dateien, die vor dem Laden des Moduls verarbeitet werden sollen (optional)
  # ScriptsToProcess = @()

  # Typen, die aus dem Modul exportiert werden sollen (optional)
  # TypesToExport = @()

  # Variable, die aus dem Modul exportiert werden sollen (optional)
  # VariablesToExport = @()

  # Formate, die für das Modul verwendet werden sollen (optional)
  # FormatsToProcess = @()

  # Private Daten, die von anderen Skripten und Modulen verwendet werden können (optional)
  # PrivateData = @{}

  # Release Notes, die Informationen über die neuesten Änderungen und Updates enthalten (optional)
  # ReleaseNotes = 'ReleaseNotes.md'

  # Informationen über den Lizenztyp und die URL (optional)
  # LicenseUri = 'https://github.com/Tealk/Intune-Win32-packaging/blob/master/LICENSE'
  # ProjectUri = 'https://github.com/Tealk/Intune-Win32-packaging'
}
