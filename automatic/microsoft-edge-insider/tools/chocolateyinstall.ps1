
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/efa03b2f-e017-41e2-a7c4-b168827422f5/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/80ceaccc-d2a2-4354-822d-7b446d8af668/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '564f94d037099687bedcc5bfdbdb433b1b5a5373f684e50cc54aa5cc0bbc7102'
  checksumType  = 'sha256'
  checksum64    = 'dbbd6f01943046eaaeb6882d32a3a2a5bd428c5773b7f68dc52a13e5b08b7d21'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








