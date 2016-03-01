Write-Host -NoNewLine "Initializing profile from "
Write-Host -NoNewLine -ForegroundColor Yellow "$profile"

# ============================================================
(Get-PSProvider 'FileSystem').Home = $ENV:USERPROFILE

# ============================================================
# Alias
# ============================================================
New-Alias Which Get-Command
New-Alias ll    Get-ChildItem
New-Alias np    "C:\Program Files (x86)\Notepad++\notepad++.exe"

# ============================================================
# Shortcut variables
# ============================================================
$desktop   = $(Resolve-Path "$ENV:USERPROFILE\Desktop")
$docs      = $(Resolve-Path "$ENV:USERPROFILE\Documents")
$downloads = $(Resolve-Path "$ENV:USERPROFILE\Downloads")

$scripts   = "$(Split-Path "$profile")\Scripts"
$modules   = "$(Split-Path "$profile")\Modules"

# ============================================================
# Posh-Git (requires https://github.com/dahlbyk/posh-git)
# ============================================================
# Load posh-git example profile
. ($ENV:USERPROFILE + '\posh-git\profile.example.ps1')

Write-Host -NoNewLine " - "
Write-Host -ForegroundColor Green "DONE"
Write-Host 