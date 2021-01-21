
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/be8a2436-94bb-4918-bd1e-2f6d383cd5b3/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f0f50c13-ed53-48ac-bad6-bea46ab351f6/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '2b5ee60ec78e3ea40414b2c84799bc69b02a41b3cbe9298d049db3a04ae52135'
  checksumType  = 'sha256'
  checksum64    = '409e8b1ed2a28be1d84726071cca9575346beea4690ee6919e4439d3d0ae56bb'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








