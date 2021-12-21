
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5e963186-9d8d-476a-8ff5-944b03889dfe/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fc49ce1c-404f-45c5-a822-fc80f211b756/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '1d27fc2a1fa37838355d65d4f03cbdd8a6eb57e3c2fe03d9e2a36a190bb8be50'
  checksumType  = 'sha256'
  checksum64    = '18d9c711ee7bc2dc62288d9d22f8e675c1d85fa5f050c527787ffdb19bfdcca4'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








