
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5e2b8e1f-fdc9-4351-90a6-07e1ac6370c8/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/11d9d8fb-058d-4635-8419-ef12e23c9421/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '9913f38f3dc584aac525ec1d2d84a28a5c3e94ab12818b45a02edb2f3c1fb12e'
  checksumType  = 'sha256'
  checksum64    = '770dbf6d86e27c7cbb6f040a57c4acdd48867adcab32f5ed3bb5c53eaadc03a0'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








