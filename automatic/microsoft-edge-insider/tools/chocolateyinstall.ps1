$ErrorActionPreference = 'Stop';

$version = '147.0.3912.37'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a5c807f4-10b2-403b-a45a-de3dc4f3bb46/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/419fd95f-35c4-4bc6-8d1d-5a68eb17c94e/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '2402001F81BB5DD59B62EF2B3CDB0E137903CF67F8498DE2F4C70D5B0D51303B'
  checksumType  = 'sha256'
  checksum64    = '052882E14590464DAC3A4D1EDAA0B8A10A89846E2DE536F5F29743DDEA93B971'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








