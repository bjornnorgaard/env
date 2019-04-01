function GetAdminRights {
    param([switch]$Elevated)
    function Check-Admin {
        $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
        $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
    }
    if ((Check-Admin) -eq $false) {
        if ($elevated) {
            # could not elevate, quit
        }
        else {
            Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
        }
        exit
    }
}

function InstallChocolatey {
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

function InstallStuff {
    choco install 7zip
}

GetAdminRights
InstallChocolatey
InstallStuff
