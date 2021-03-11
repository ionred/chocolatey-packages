
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dec1a2de-8dcd-402d-b7eb-6b506ff0c4be/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2c946be4-2151-48f5-baa6-e5b286488972/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'c1782200ebc237c1f83b4e735f57e8b2ab864bc656b191977d9e5704268fca2a'
  checksumType  = 'sha256'
  checksum64    = '7d3b8e50298342df76e504b8c4aee9e6a58f3e325ae57240b013ed77c9f1c7a5'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








