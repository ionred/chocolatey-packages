$ErrorActionPreference = 'Stop';

$version = '150.0.4078.46'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5f8f0330-3936-4a9c-911e-e641264a8731/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7b3ebe0d-3d59-480c-bff6-f4f891a2a131/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '0B86FA7022E431BE0CDC2AF3347D6FD7F56542551C02E2F01FF8034E66A85775'
  checksumType  = 'sha256'
  checksum64    = '3A74EEFB16344AD94C8B0D98678DFCDE0B30F87354EABCE5EE19BC7DEBD4D1A2'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








