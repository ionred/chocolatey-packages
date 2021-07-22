
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/bb235ec7-1082-4e69-815b-fdbf91ed5994/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/121cc2f6-b08c-4019-9d77-5ecc4dadabae/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '999d8ef6f66bb4637786c6e7cd9fcb212bfa5ef49d618b5f32a417c8e78905dd'
  checksumType  = 'sha256'
  checksum64    = '4c994b54ef356be67a4e0e3d286aa0b1f44244bb795dc3de99b4e4c57c56f875'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








