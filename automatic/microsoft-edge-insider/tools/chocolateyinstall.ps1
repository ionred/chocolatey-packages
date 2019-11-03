
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/84ab2587-09e6-4004-a4d7-7d15c413b92a/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/64bad2ee-92a4-4973-8c10-a101bb52e477/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '52dccec013f93f96c6ec5ba5c97129bbe95dce5c4f8913b156dc7906de0a2ff9'
  checksumType  = 'sha256'
  checksum64    = '9243600fd66a8cc6875b8a82cd6160f7a37958f283bb963cfb6bbab4c035544d'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








