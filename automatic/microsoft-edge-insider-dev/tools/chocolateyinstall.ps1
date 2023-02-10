
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ef6a013a-65a1-4460-95c2-f2434f565c13/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/053926af-4536-4ed1-aced-d57b00be95fd/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '01302c65176de1aa9b682e15f8f031eb8c7d77ec4fff3152cd58b5d42d5b021a'
  checksumType  = 'sha256'
  checksum64    = 'd568f0b60cc8374127c3695e4610363569f6a5bf0b164ae0751c2e3f24766a8d'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








