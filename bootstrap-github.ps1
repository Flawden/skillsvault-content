param(
    [Parameter(Mandatory=$true)]
    [string]$RepoUrl,

    [string]$GitUserName = "",
    [string]$GitUserEmail = ""
)

$ErrorActionPreference = "Stop"

function Run-Git {
    param([Parameter(ValueFromRemainingArguments=$true)][string[]]$Args)
    & git @Args
    if ($LASTEXITCODE -ne 0) {
        throw "git failed: git $($Args -join ' ')"
    }
}

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Git not found in PATH."
}

if (Test-Path ".git") {
    throw ".git already exists. Run this script only in a fresh extracted snapshot."
}

Write-Host "===== SkillsVault GitHub bootstrap =====" -ForegroundColor Cyan

Run-Git init -b main

if ($GitUserName) { Run-Git config user.name $GitUserName }
if ($GitUserEmail) { Run-Git config user.email $GitUserEmail }

# Ensure identity exists before first commit.
$name = (& git config user.name)
$email = (& git config user.email)
if (-not $name -or -not $email) {
    throw "Git user identity is not configured. Configure globally, or pass -GitUserName and -GitUserEmail."
}

# Commit 1: system
Run-Git add README.md ROADMAP.md docs system schema_change_requests migration .gitignore .gitattributes .github tools
Run-Git commit -m "migration: import SkillsVault content system"

# Commit 2: D1 freeze
Run-Git add "topics/02_Industrial_Engineering_PTM/Crane_Mechanics/CRN-M-01/D1"
Run-Git commit -m "freeze: import CRN-M-01 D1 frozen v1"
Run-Git tag -a "crn-m-01-d1-v1" -m "CRN-M-01 D1 frozen v1"

# Commit 3: D2 freeze
Run-Git add "topics/02_Industrial_Engineering_PTM/Crane_Mechanics/CRN-M-01/D2"
Run-Git commit -m "freeze: import CRN-M-01 D2 frozen v1"
Run-Git tag -a "crn-m-01-d2-v1" -m "CRN-M-01 D2 frozen v1"

# Commit 4: D3 freeze
Run-Git add "topics/02_Industrial_Engineering_PTM/Crane_Mechanics/CRN-M-01/D3"
Run-Git commit -m "freeze: import CRN-M-01 D3 frozen v1"
Run-Git tag -a "crn-m-01-d3-v1" -m "CRN-M-01 D3 frozen v1"

# Commit 5: current D4 accepted gates + status
Run-Git add "topics/02_Industrial_Engineering_PTM/Crane_Mechanics/CRN-M-01/D4" status
Run-Git commit -m "source: import CRN-M-01 D4 architecture and gates G1-G7"

# Verify before push
python tools/verify_content_integrity.py
if ($LASTEXITCODE -ne 0) {
    throw "Content integrity verification failed."
}

Run-Git remote add origin $RepoUrl
Run-Git push -u origin main
Run-Git push origin --tags

Write-Host ""
Write-Host "===== DONE =====" -ForegroundColor Green
Write-Host "Canonical entrypoint: status/CONTENT_STATUS.json"
Write-Host "Next: CRN-M-01 / D4-G8"
