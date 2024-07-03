$ErrorActionPreference = 'Stop';

$version = '127.0.2651.31'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c3284d4d-f0bd-48f0-89be-88893752d831/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d17d8964-3f3c-4d55-96b4-99f8d8cb4ac7/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '24C25C2ED96B9C1BEF345DCF770F778EA323CD5C58A44DE68B5D83AEAC986240'
  checksumType  = 'sha256'
  checksum64    = 'A69F947239540CCA6B0B737CB5C76D23346067FDD458575C07E5E5BBEC856752'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








