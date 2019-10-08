
$ErrorActionPreference = 'Stop';
$url32        = 'https://go.microsoft.com/fwlink/?linkid=2093436'
$url64      = 'https://go.microsoft.com/fwlink/?linkid=2093291'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'cc95adaafa9eb3e4ba0140b7fa2e681eaa1c6f4a6e4c38066b994709550c8b39'
  checksumType  = 'sha256'
  checksum64    = '05d950f2516a7a3da11676f80cf6756c172a1eb19e3fd6b56a46d4db028e2ceb'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








