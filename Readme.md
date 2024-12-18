# Intune Win32 Packaging Toolkit

This PowerShell-based toolkit streamlines the packaging and deployment of Win32 applications via Microsoft Intune. It offers a structured approach for handling input files, utilizing a template system to simplify updates and modifications. By leveraging modular functions and a predefined execution flow, it enhances script management and automation capabilities.

## Setup

In `functions.psm1`, adjust the `$TenantID` variable to match your Azure tenant ID.

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/Tealk/Intune-Win32-packaging.git
   ```
2. Navigate to the project directory:
   ```sh
   cd Intune-Win32-packaging
   ```
3. Ensure PowerShell is installed (if not already).

## Usage

Run the script with the following command:
```sh
./start.ps1
```

The following switches are available:

```
-t to test with admin rights
-ts to test with system account
-tu to compare package names/folder names with those of Intune
-p to package one program
-pm to package all programs in a folder
-c deletes all .intunewin files older than 30 days
```

If script execution is blocked, set the permissions with:
```sh
Set-ExecutionPolicy Unrestricted -Scope Process
```

## Files

- `start.ps1` – Initiates the packaging process.
- `functions.psm1` – Contains various functions, including the `$TenantID` variable.
- `functions.psd1` – Manifest for the PowerShell module.
- `Deploy-Application.ps1` – Script where variables are adjusted for each packaging or update.

## Program Input

Programs should be placed in the `\IN` folder. The files from `\IN\_template` can be used as a base, but only those that need modifications should be copied, as the script uses the template folder as default and overwrites the program-specific files.

To update the toolkit, simply place the latest files in `\IN\_template` and adjust the program files if necessary.

## Contributing

If you would like to contribute, please fork the repository, make your changes, and submit a pull request.

## License

[Intune-Win32-packaging](https://github.com/Tealk/Intune-Win32-packaging) © 2023 by Tealk is licensed under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1)