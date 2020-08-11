
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/c6d5f7ec-4cbb-4903-b4df-77a88924bfef/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/b005ed78-462c-40c5-a4ef-37e2b87813e4/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '038981683bd8d22b1687dd2c3e3ee1181288dfbbac0f10060457850cf79c4980'
  checksumType  = 'sha256'
  checksum64    = '1e86fc4ac15120d3505c8bff1014756fc2cf59f6ae74d688afcf2fa4d4b6353f'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








