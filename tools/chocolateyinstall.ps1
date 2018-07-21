$packageName    = 'docker-machine-vmware'
$driverName     = 'docker-machine-driver-vmware'
$url            = 'https://github.com/machine-drivers/docker-machine-driver-vmware/releases/download/v0.1.0/docker-machine-driver-vmware_windows_amd64.exe'
$checksum       = '8c12888cca194c1a5f269e80139d273bf5fe26e75062ca640cf4daea267ed458'
$url64          = 'https://github.com/machine-drivers/docker-machine-driver-vmware/releases/download/v0.1.0/docker-machine-driver-vmware_windows_amd64.exe'
$checksum64     = '8c12888cca194c1a5f269e80139d273bf5fe26e75062ca640cf4daea267ed458'
$checksumType   = 'sha256'
$checksumType64 = 'sha256'

$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageDir  = "$(Split-Path -parent $toolsDir)"
$installDir  = Join-Path "$packageDir" "bin"
$installBin  = "${driverName}.exe"
$installPath = Join-Path "$installDir" "$installBin"

New-Item -ItemType Directory -Force -Path "$installDir"
Get-ChocolateyWebFile "$packageName" "$installPath" "$url" "$url64" -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"
