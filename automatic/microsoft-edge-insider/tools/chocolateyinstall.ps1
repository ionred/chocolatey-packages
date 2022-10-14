
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9fd44ad4-da70-4a59-ae7c-9e17a83847a5/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/400f1836-2185-4daa-b403-bb42e9801d51/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '841c47d7daa847d0a032ec69df0efce29d7c1d3af7e52312a7877b6652b2ef4d'
  checksumType  = 'sha256'
  checksum64    = '666ce5daf8262ca0f61e990ea33ee5b4bf9e97a02ac3545c2e8ebbcdb135879b'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








