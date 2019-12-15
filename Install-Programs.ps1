If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {   
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb runAs -ArgumentList $arguments
    Break
}

# General
choco install keepass GoogleChrome foxitreader doublecmd irfanview Firefox dropbox sharex 7zip vlc agentransack teamviewer -y
# keepass
# GoogleChrome
# agentransack
# foxitreader
# teamviewer
# doublecmd
# irfanview
# Firefox
# dropbox
# sharex
# 7zip
# vlc

# Dev
choco install git slack vscode nodejs postman sourcetree docker-desktop jetbrains-rider docker-for-windows intellijidea-ultimate resharper-ultimate-all visualstudio2019community -y 
# git
# slack
# vscode
# nodejs
# postman
# sourcetree
# docker-desktop
# jetbrains-rider
# docker-for-windows
# intellijidea-ultimate
# resharper-ultimate-all
# visualstudio2019community

# Fun
choco install uplay steam spotify discord goggalaxy epicgameslauncher geforce-experience -y
# uplay
# steam
# spotify
# discord
# goggalaxy
# epicgameslauncher
# geforce-experience