# Lumos: List files in the current directory
function Lumos {
    Write-Host "Casting Lumos... showing files and directories"
    Get-ChildItem $args[0]
}

# LumosMaxima: List all files (including hidden) in the current directory
function LumosMaxima {
    Write-Host "Casting Lumos Maxima... showing all files (including hidden)"
    Get-ChildItem $args[0] -Force
}

# Nox: Exit PowerShell session
function Nox {
    Write-Host "Casting Nox... exiting PowerShell session"
    Exit
}

# WingardiumLeviosa: Move a file or directory
function WingardiumLeviosa {
    Write-Host "Casting Wingardium Leviosa... moving $($args[0]) to $($args[1])"
    Move-Item $args[0] $args[1]
}

# Expelliarmus: Terminate a process by its PID
function Expelliarmus {
    Write-Host "Casting Expelliarmus... terminating process with PID(s): $args"
    Stop-Process -Id $args
}

# FiniteIncantatem: Terminate all processes by name
function FiniteIncantatem {
    Write-Host "Casting Finite Incantatem... terminating all processes named: $args"
    Stop-Process -Name $args
}

# Ascendio: Move up to the parent directory
function Ascendio {
    Write-Host "Casting Ascendio... moving up to the parent directory"
    Set-Location ..
}

# Geminio: Copy a file or directory
function Geminio {
    Write-Host "Casting Geminio... copying $($args[0]) to $($args[1])"
    Copy-Item $args[0] $args[1]
}

# Obliviate: Clear the screen
function Obliviate {
    Write-Host "Casting Obliviate... clearing the screen"
    Clear-Host
}

# Defodio: Create a new directory
function Defodio {
    Write-Host "Casting Defodio... creating directory $($args[0])"
    New-Item -ItemType Directory -Path $args[0]
}

# Sonorus: Echo back the given arguments
function Sonorus {
    Write-Host "Casting Sonorus... echoing back: $args"
    Write-Output $args
}

# Stupefy: Pause execution for a specified number of seconds
function Stupefy {
    Write-Host "Casting Stupefy... pausing execution for $($args[0]) seconds"
    Start-Sleep -Seconds $args[0]
}

# Portus: Change directory to home
function Portus {
    Write-Host "Casting Portus... changing directory to home"
    Set-Location $env:USERPROFILE
}

# AvadaKedavra: Forcefully terminate a process
function AvadaKedavra {
    Write-Host "Casting Avada Kedavra... forcefully terminating $($args[0])"
    Stop-Process -Name $args[0] -Force
}

# Protego: Change file permissions
function Protego {
    param (
        [string]$attribute,
        [string]$filePath
    )

    Write-Host "Casting Protego... changing file permissions to $attribute for $filePath"

    switch ($attribute) {
        "ReadOnly" {
            Set-ItemProperty -Path $filePath -Name Attributes -Value ([System.IO.FileAttributes]::ReadOnly)
        }
        "Hidden" {
            Set-ItemProperty -Path $filePath -Name Attributes -Value ([System.IO.FileAttributes]::Hidden)
        }
        "Normal" {
            Set-ItemProperty -Path $filePath -Name Attributes -Value ([System.IO.FileAttributes]::Normal)
        }
        default {
            Write-Host "Invalid attribute. Please use ReadOnly, Hidden, or Normal."
        }
    }
}

# Evanesco: Hide a file or directory
function Evanesco {
    Write-Host "Casting Evanesco... hiding $($args[0])"
    Set-ItemProperty $args[0] Attributes -Value ([System.IO.FileAttributes]::Hidden) 
}

# Sectumsempra: Split a file into pieces
function Sectumsempra {
    Write-Host "Casting Sectumsempra... splitting file(s): $args"
    Split-Path $args -Leaf
}

# Accio: Find files based on given criteria
function Accio {
    Write-Host "Casting Accio... finding files matching criteria: $args"
    Get-ChildItem $args[0] -Recurse -Include $args[1]
}

# CistemAperio: Edit a file using notepad
function CistemAperio {
    Write-Host "Casting Cistem Aperio... editing file: $args"
    notepad $args[0]
}

# HomenumRevelio: Print the current working directory
function HomenumRevelio {
    Write-Host "Casting Homenum Revelio... printing current working directory"
    Get-Location
}

# Reducto: Remove a directory and its contents recursively
function Reducto {
    Write-Host "Casting Reducto... removing directory and contents recursively: $args"
    Remove-Item -Path $args[0] -Recurse -Force
}

# Expulso: Remove a directory and its contents forcefully
function Expulso {
    Write-Host "Casting Expulso... forcefully removing directory and contents: $args"
    Remove-Item -Path $args[0] -Force
}

# Engorgio: Create an empty file
function Engorgio {
    Write-Host "Casting Engorgio... creating empty file(s): $args"
    New-Item -ItemType File $args[0]
}

# EngorgioSkullus: Display the first few lines of a file
function EngorgioSkullus { ##########
    Write-Host "Casting Engorgio Skullus... displaying first few lines of file(s): $args"
    Get-Content -Path $args[0] -TotalCount 1
}

# ArrestoMomentum: Pause a process
function ArrestoMomentum {
    Write-Host "Casting Arresto Momentum... pausing process with PID(s): $args"
    Suspend-Process -Id $args
}

# Locomotor: Change directory to the specified path
function Locomotor {
    Write-Host "Casting Locomotor... changing directory to: $args"
    Set-Location $args[0]
}

# Revelio: Display the contents of a file
function Revelio {
    Write-Host "Casting Revelio... displaying contents of file(s): $args"
    Get-Content $args
}

# Colloportus: Compress files into a zip archive
function Colloportus {
    Write-Host "Casting Colloportus... compressing files into zip archive: $args"
    Compress-Archive -Path $args[0] -DestinationPath $args[1]
}

# Alohomora: Extract files from a zip archive
function Alohomora {
    Write-Host "Casting Alohomora... extracting files from zip archive: $args"
    Expand-Archive -Path $args[0] -DestinationPath $args[1]
}

# ExpectoPatronum: Ping a network host to test connectivity
function ExpectoPatronum {
    Write-Host "Casting Expecto Patronum... pinging host(s): $args"
    try {
        Test-Connection -ComputerName $args[0] -Count 4 -ErrorAction Stop
        Write-Host "Ping successful!"
    }
    catch {
        Write-Host "Error: Unable to ping the host. $_"
    }
}

# Morsmordre: Print the current username
function Morsmordre {
    Write-Host "Casting Morsmordre... printing current username"
    $env:USERNAME
}

# PriorIncantato: Show command history
function PriorIncantato {
    Write-Host "Casting Prior Incantato... showing command history"
    Get-History
}

# Legilimens: List running processes
function Legilimens {
    Write-Host "Casting Legilimens... listing running processes"
    if ($args.Count -eq 0) {
        Get-Process
    } else {
        Get-Process -Name $args
    }
}

# Aparecium: Search for text within files
function Aparecium {
    Write-Host "Casting Aparecium... searching for text in files: $args"
    Select-String -Path $args[0] -Pattern $args[1]
}

# CapaciousExtremis: Display disk space usage in a human-readable format
function CapaciousExtremis {
    Write-Host "Casting Capacious Extremis... displaying disk space usage: $args"
    Get-PSDrive | Where-Object { $_.Free -gt 0 } | Format-Table -AutoSize
}

# List all available commands
function ListCommands {
    Write-Host "Available Commands:"

    Write-Host "Lumos"
    Write-Host "LumosMaxima"
    Write-Host "Nox"
    Write-Host "WingardiumLeviosa"
    Write-Host "Expelliarmus"
    Write-Host "FiniteIncantatem"
    Write-Host "Ascendio"
    Write-Host "Geminio"
    Write-Host "Obliviate"
    Write-Host "Defodio"
    Write-Host "Sonorus"
    Write-Host "Stupefy"
    Write-Host "Reparo"
    Write-Host "Portus"
    Write-Host "AvadaKedavra"
    Write-Host "Protego"
    Write-Host "Evanesco"
    Write-Host "Sectumsempra"
    Write-Host "Accio"
    Write-Host "CistemAperio"
    Write-Host "HomenumRevelio"
    Write-Host "Reducto"
    Write-Host "Expulso"
    Write-Host "Engorgio"
    Write-Host "EngorgioSkullus"
    Write-Host "ArrestoMomentum"
    Write-Host "Locomotor"
    Write-Host "Revelio"
    Write-Host "Colloportus"
    Write-Host "Alohomora"
    Write-Host "ExpectoPatronum"
    Write-Host "Morsmordre"
    Write-Host "PriorIncantato"
    Write-Host "Legilimens"
    Write-Host "Aparecium"
    Write-Host "CapaciousExtremis"
    Write-Host "ListCommands"
}


Write-Host "Welcome to MagicShell!!"
Write-Host "Use these spells wisely to manage your files and system!"
Write-Host "Type 'ListCommands' to show all the available commands!"