# Environment setup
Repo containing most common tools and how to set then up.

# Install Chocolatey
Run this as admin:

```ps
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

# Delete merged branches
Deletes local branches already merged into current branch.
`
git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d
`
