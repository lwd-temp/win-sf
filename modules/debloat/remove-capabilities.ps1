param(
    $powershell_ise,
    $wordpad
)

if ($powershell_ise) {
    dism /online /norestart /remove-capability /quiet '/capabilityname:Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0'
    if ($?) { Write-Output 'Removed capability PowerShell ISE.' }
}

if ($wordpad) {
    dism /online /norestart /remove-capability /quiet '/capabilityname:Microsoft.Windows.WordPad~~~~0.0.1.0'
    if ($?) { Write-Output 'Removed capability WordPad.' }
}
