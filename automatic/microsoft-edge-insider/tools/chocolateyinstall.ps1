
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/edbd1715-6c7b-4d53-b66d-2bb87ba205f7/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a5ce5c51-8e2e-42c1-84b5-7e2515f86ebe/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '67cb1cebaa09b36e3252ec5187623b6b4c5fed8e7e677100ba88b6b41f60ab45'
  checksumType  = 'sha256'
  checksum64    = 'bea97e10f9bf1431faad751ec39aeea3fb34e220fe4a84ddbd1479b45501a5fe'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








