
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/879ae3d5-b79b-475b-9505-65916567e1eb/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/edbcbb91-1ca6-42f6-9e59-b5580c9f599b/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'bb54e11e586edabbbc4d63f7d8957c5dab3c015db0ef3155e62bb75324a92643'
  checksumType  = 'sha256'
  checksum64    = '9cfa5894d71708c3278bca6ceae2539d5e011b52c7cef2ebe62b12fdb3e39240'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








