$ErrorActionPreference = 'Stop';

$version = '131.0.2903.14'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e1e6fc23-9b9e-40b6-bad0-7a721303b093/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b980a604-e783-4590-8ec8-9f5d10da722a/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '701790EF8A426C83E1E500FF0080F00DF227DAD70B4EF2749BE70FB99A7F88FA'
  checksumType  = 'sha256'
  checksum64    = '5F3CEAE67C3154C59E65526C6E2DF4CEBC26B583E2B39905CCD35C9554CB4B21'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








