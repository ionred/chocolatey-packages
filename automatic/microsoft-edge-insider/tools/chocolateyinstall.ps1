$ErrorActionPreference = 'Stop';

$version = '123.0.2420.53'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f86474db-330c-4a7a-a388-04b2859f0f91/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/52f01fd1-4c11-4e79-829d-8a11e4004500/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'FFB6CAB3080C0FFA0FC539CDDDADD5B788D47F7DFD6C365952BA70131673B2ED'
  checksumType  = 'sha256'
  checksum64    = 'E6F5405550873ABE8E5D8498CE9E78BB8E3F91D992C433D16A6FBA161DDDFBDE'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








