$ErrorActionPreference = 'Stop';

$version = '129.0.2792.50'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/165f8d75-3f81-4bce-8a57-e0d26fe134f4/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/bf82b286-c6ac-42f0-bf53-1bc06106e62d/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'F1A65CDFC80C21DD9420BF73A1336055A70E2ED9FDC17A3D937F6B3F68FF3AE3'
  checksumType  = 'sha256'
  checksum64    = 'EA8D813C8765DF47CD7D0F6D8E67691CF92A79D314B3A5260AD909DC06AB9E0F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








