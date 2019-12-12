
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/6ba68c06-da9d-4a58-aa45-437b3675bc5d/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/79a91227-84d0-4d11-a9f4-40234adc5ab4/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'ec990d81930f6f14e59dd5b8fdc3bcd2709fbdaead726992e62d1083190dfc69'
  checksumType  = 'sha256'
  checksum64    = '1a0ffc1cfe863d0f7b8f12c8231104d2525e21121919e05f15098f7c72f65022'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








