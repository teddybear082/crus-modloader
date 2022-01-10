#Requires -Version 3

# Installs modloader.gdc
# Expected folder structure:
# => <GAME_DIR>
#   => crus-modloader
#     - Install-Modloader.ps1
#     - install_modloader.bat
#     - godotpcktool.exe
#     - modloader.gdc
#   - crueltysquad.pck
#   - crueltysquad.exe
#   - [...]

function local:Write-Step()
{
    param(
        [CmdletBinding()]
        [Parameter(Mandatory, Position = 0)]
        $msg,
        [Switch] $ErrorMessage
    )

    if($ErrorMessage)
    {
        Write-Host -F Red -NoNewline "[Modloader Install] "
    }
    else
    {
        Write-Host -F Magenta -NoNewline "[Modloader Install] "
    }

    Write-Host $msg
}

# Stop on any failure in script
$local:ErrorActionPreference = [System.Management.Automation.ActionPreference]::Stop

# (Could be moved to a parameter)
$gameDir         = Get-Item "$PSScriptRoot\.."

$pcktool         = Get-Item "$PSScriptRoot\godotpcktool.exe"
$modloaderScript = Get-Item "$PSScriptRoot\modloader.gdc"
$pckFile         = Get-Item "$gameDir\crueltysquad.pck"
$pckBackupPath   = "$($pckFile.Directory)\$($pckFile.Name).bak"

$workDir = Get-Item $PSScriptRoot
# Move to work dir (release/script base folder for now), then return to original dir
Push-Location $workDir
try
{
    # Create copy of pck for modification
    Copy-Item $pckFile $workDir
    $workPck = Get-Item "$workDir\$($pckFile.Name)"

    # Run packer, now that everything is in current directory use .Name to get required pck structure\
    # (There has to be a built in way to do this but I don't know it)
    Write-Step "Adding modloader script to game pck file"
    & $pckTool $workPck.Name -a a $modloaderScript.Name `
        | ForEach-Object { Write-Host -F Cyan "[godotpcktool] $_" }

    # Move original pck to backup filename
    Write-Step "Backing up original pck to ${pckBackupPath}"
    Move-Item -Force $pckFile "$pckBackupPath"

    # Move patched pck to original path, on failure restore bak file
    try
    {
        Write-Step "Moving updated pck into game directory"
        Move-Item $workPck $pckFile
    }
    catch
    {
        Write-Step -ErrorMessage "Restoring original pck from .bak"
        Move-Item $pckBackupPath $pckFile.FullName
    }
}
catch
{
    Write-Step -ErrorMessage "Modloader install failed: $_"
    # Dump error for testing
    $_
}
finally
{
    Pop-Location
}
