# MagicShell

MagicShell is a collection of custom PowerShell commands inspired by magical spells from the wizarding world. These commands enhance your PowerShell experience with intuitive and magical functionalities.

## Commands Spellbook

- **Lumos**: List files in the current directory.
- **LumosMaxima**: List all files (including hidden) in the current directory.
- **Nox**: Exit PowerShell session.
- **WingardiumLeviosa**: Move a file or directory.
- **Expelliarmus**: Terminate a process by its PID.
- **FiniteIncantatem**: Terminate all processes by name.
- **Ascendio**: Move up to the parent directory.
- **Geminio**: Copy a file or directory.
- **Obliviate**: Clear the screen.
- **Defodio**: Create a new directory.
- **Sonorus**: Echo back the given arguments.
- **Stupefy**: Pause execution for a specified number of seconds.
- **Reparo**: Fix broken dependencies.
- **Portus**: Change directory to home.
- **AvadaKedavra**: Forcefully terminate a process.
- **Protego**: Change file permissions.
- **Evanesco**: Hide a file or directory.
- **Sectumsempra**: Split a file into pieces.
- **Accio**: Find files based on given criteria.
- **CistemAperio**: Edit a file using notepad.
- **HomenumRevelio**: Print the current working directory.
- **Reducto**: Remove a directory and its contents recursively.
- **Expulso**: Remove a directory and its contents forcefully.
- **Engorgio**: Create an empty file.
- **EngorgioSkullus**: Display the first few lines of a file.
- **ArrestoMomentum**: Pause a process.
- **Locomotor**: Change directory to the specified path.
- **Revelio**: Display the contents of a file.
- **Colloportus**: Compress files into a zip archive.
- **Alohomora**: Extract files from a zip archive.
- **ExpectoPatronum**: Ping a network host to test connectivity.
- **Morsmordre**: Print the current username.
- **PriorIncantato**: Show command history.
- **Legilimens**: List running processes.
- **Aparecium**: Search for text within files.
- **CapaciousExtremis**: Display disk space usage in a human-readable format.

## Setup

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/shahfaiz-07/magic_shell
   ```

3. Source the PowerShell Script

    - Open PowerShell.

    - Navigate to the directory where custom_commands.ps1 is located.

        ```powershell
        cd path\to\custom_commands.ps1
        ```
    - Source the script to load all custom commands into your PowerShell session.
        ```powershell
        . .\custom_commands.ps1
        ```

## Requirements

- PowerShell 5.1 or higher.

## Notes

- Some commands may require administrative privileges (`AvadaKedavra`, `Protego`, `Imperio`).
- If you see an error like -- **IMPORTANT!!**
```powershell
custom_commands.ps1 cannot be loaded because
running scripts is disabled on this system
```
- Then change the powershell execution policy:
    1. Open PowerShell with Administrator Privileges
    2. Set the Execution Policy 
        - Run the following command in the Administrator PowerShell window:
            ```powershell
            Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
            ```

## Sample usage of all commands

   Below is a list of available commands and their usage examples:

- **Lumos**
     ```powershell
     Lumos
     ```

- **LumosMaxima**
     ```powershell
     LumosMaxima
     ```

- **Nox**
     ```powershell
     Nox
     ```

- **WingardiumLeviosa**
     ```powershell
     WingardiumLeviosa "file.txt" "destination\"
     ```

- **Expelliarmus**
     ```powershell
     Expelliarmus 1234
     ```

- **FiniteIncantatem**
     ```powershell
     FiniteIncantatem "notepad.exe"
     ```

- **Ascendio**
     ```powershell
     Ascendio
     ```

- **Geminio**
     ```powershell
     Geminio "file.txt" "copy_of_file.txt"
     ```

- **Obliviate**
     ```powershell
     Obliviate
     ```

- **Defodio**
     ```powershell
     Defodio "new_directory"
     ```

- **Sonorus**
     ```powershell
     Sonorus "Hello, World!"
     ```

- **Stupefy**
     ```powershell
     Stupefy 5
     ```

- **Reparo**
     ```powershell
     Reparo
     ```

- **Portus**
     ```powershell
     Portus
     ```

- **AvadaKedavra**
     ```powershell
     AvadaKedavra "notepad.exe"
     ```

- **Protego**
     ```powershell
     Protego -attribute ReadOnly -filePath "file.txt"
     ```

- **Evanesco**
     ```powershell
     Evanesco "file.txt"
     ```

- **Sectumsempra**
     ```powershell
     Sectumsempra "file.txt"
     ```

- **Accio**
     ```powershell
     Accio "path\to\files" "*.txt"
     ```

- **CistemAperio**
     ```powershell
     CistemAperio "file.txt"
     ```

- **HomenumRevelio**
     ```powershell
     HomenumRevelio
     ```

- **Reducto**
     ```powershell
     Reducto "directory_to_remove"
     ```

- **Expulso**
     ```powershell
     Expulso "directory_to_remove"
     ```

- **Engorgio**
     ```powershell
     Engorgio "new_file.txt"
     ```

- **EngorgioSkullus**
     ```powershell
     EngorgioSkullus "file.txt"
     ```

- **ArrestoMomentum**
     ```powershell
     ArrestoMomentum 1234
     ```

- **Locomotor**
     ```powershell
     Locomotor "path\to\directory"
     ```

- **Revelio**
     ```powershell
     Revelio "file.txt"
     ```

- **Colloportus**
     ```powershell
     Colloportus "files_to_compress" "destination\archive.zip"
     ```

- **Alohomora**
     ```powershell
     Alohomora "archive.zip" "destination\extracted_files"
     ```

- **ExpectoPatronum**
     ```powershell
     ExpectoPatronum "www.google.com"
     ```

- **Morsmordre**
     ```powershell
     Morsmordre
     ```

- **PriorIncantato**
     ```powershell
     PriorIncantato
     ```

- **Legilimens**
     ```powershell
     Legilimens
     ```

- **Aparecium**
     ```powershell
     Aparecium "path\to\files" "search_text"
     ```

- **CapaciousExtremis**
     ```powershell
     CapaciousExtremis
     ```

**Enjoy the Magic!**
- Explore and utilize these commands to streamline your PowerShell tasks with a touch of magic.