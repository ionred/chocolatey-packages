$ErrorActionPreference = 'Stop';

$version = '122.0.2365.50'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/711f83bb-88e1-49a4-8e74-737d40137e45/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c7b05d56-f75d-43c9-aae5-6b12bf054cb1/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '3127E1E0A9A89BEF4BFDDCF34BA4B186E842425DF0F52CAF22060623444B4BAD'
  checksumType  = 'sha256'
  checksum64    = 'C58966B4DA81F918FDF5665C8FAD6B3C246485E5250716417DF99F5BBC27D6D3'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








