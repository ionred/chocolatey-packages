$ErrorActionPreference = 'Stop';

$version = '127.0.2651.8'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/024cf101-1fe7-47e1-aba6-28233204abef/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/33249cec-8a67-4451-ab5e-04422dd412db/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '0A03CFB9824B6F9D1F61573218268990959AC9F6CBD6DB1D297A335C469858ED'
  checksumType  = 'sha256'
  checksum64    = 'BEE55A32FDDB4C789229F3EA999083715937546BB5D7C80A8740D3B5E21AC319'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








