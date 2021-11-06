
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1b19f7bf-991d-42cd-bf4c-26d005ab7d02/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f6d6b962-9c7c-42c5-8a9e-4a4404bf2ece/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '9ac94a75fb34e880ae1eec05e79cb86bc7398cacec87c7225ee019bbdf7b4a1b'
  checksumType  = 'sha256'
  checksum64    = '1e0618dc60e2177b79956b8759b4b7bd7814dd049f6afc016e21b0bdd62ca51c'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








