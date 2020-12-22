
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/81d20559-84bf-49cf-9ba9-78d031c0f722/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1651a8f0-298d-4ee2-a36c-e54c853e29c0/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'cf32de74266b5db3f444c57a5aca45675d3c08561ab703e4751236517aa97736'
  checksumType  = 'sha256'
  checksum64    = '2fb4b3f240855e5a1f38202448919fd8d83d82090354580a8b60dfc14886cdda'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








