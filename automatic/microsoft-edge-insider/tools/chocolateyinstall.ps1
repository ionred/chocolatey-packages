$ErrorActionPreference = 'Stop';

$version = '149.0.4022.50'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5dddc5da-5d76-4d4d-a8de-984c801848a6/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8b566bab-d21b-411e-8c88-2ed43d5fa3d6/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'E81AC8AB76D6DDEF3118EFDC70FFCA3691517EE4F4E7B168AC05EF1E649AB336'
  checksumType  = 'sha256'
  checksum64    = 'B4FFE3504A9CA4EFDB055FA72B0F13E5190DA393CBCB5C057F4D2899D86C464B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








