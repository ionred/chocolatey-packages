
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e74468e0-d223-4c4a-b99c-cb5e5b4b4847/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4f145e13-8713-4646-84a9-e4dab5c79a65/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

<<<<<<< HEAD
  checksum32    = 'C6647B38A6211A5B81D9C7B6ADA0F8F3F961455703492CE1694B882A2E29C9B2'
  checksumType  = 'sha256'
  checksum64    = 'AE0690ABBE55E6B698FC3363D55934A4F75C3E4BFADBCFA98651C211FE307C99'
=======
  checksum32    = 'c6647b38a6211a5b81d9c7b6ada0f8f3f961455703492ce1694b882a2e29c9b2'
  checksumType  = 'sha256'
  checksum64    = 'ae0690abbe55e6b698fc3363d55934a4f75c3e4bfadbcfa98651c211fe307c99'
>>>>>>> 7bfb299100e09a503944fdf407fb2635f7f2d0a2
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








