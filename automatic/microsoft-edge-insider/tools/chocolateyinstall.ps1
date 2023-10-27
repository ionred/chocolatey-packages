
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9da0720a-6af4-4264-8cbf-f9fdd39c2255/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/54670cfc-00c9-42ec-8f2a-7bc35e1dbeea/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '3ebf4b4e5bbf4dac6f7a694c4c29dd85a58756b5d037864665dad955682f177d'
  checksumType  = 'sha256'
  checksum64    = 'b34b72db366651aecd08a2d82698cfc1e7449ae93f4b9c1e4d28a3bb00ff86cd'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








