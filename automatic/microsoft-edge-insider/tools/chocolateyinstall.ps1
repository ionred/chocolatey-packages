
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1bd8264d-4de1-4802-aa44-fa3f8f6297fe/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/df5f91af-5996-41be-b122-e2c697f911fe/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '6a7b6c2bf9c562ff60b5914284b064d57443aec9bf68f1f31dd1e09043a9416d'
  checksumType  = 'sha256'
  checksum64    = 'fb46298fb7d81344c957a6db7ca0dcf84a37b75d079f286dcae0143ecab5dd7f'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








