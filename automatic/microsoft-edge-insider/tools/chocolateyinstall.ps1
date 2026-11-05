$ErrorActionPreference = 'Stop';

$version = '158.0.4370.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/56a8d251-8b90-4d55-8468-c848becc48b8/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1cf101bd-83b7-469e-ba4e-8cc45b8ca43f/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '8C5622605C5FB3D8008AA22AB8ABED9C8DF6DB0D7BB583D918CD4ED32DE64477'
  checksumType  = 'sha256'
  checksum64    = 'A3A18AEC3C99E70FA4B993A75693DB589B5C71A7D089FF4E917271132A77940B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








